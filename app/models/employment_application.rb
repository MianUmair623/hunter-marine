class EmploymentApplication < ActiveRecord::Base
  has_many :employment_references, :dependent => :destroy
  has_many :employment_education_records, :dependent => :destroy
  has_many :employment_history_records, :dependent => :destroy

  accepts_nested_attributes_for :employment_references, reject_if: proc { |attributes| attributes["name"].blank? }
  accepts_nested_attributes_for :employment_history_records, reject_if: proc { |attributes| attributes["name_of_employer"].blank? }
  accepts_nested_attributes_for :employment_education_records, reject_if: proc { |attributes| attributes["school_name"].blank? }

  state_machine :step, :initial => :personal do
    state :personal

    state :education do
      validates :first_name, :middle_name, :last_name, :presence => true
      validates :current_address, :city, :state, :zip, :presence => true
      validates :home_phone, :email, :begin_work, :presence => true
    end

    state :employment
    state :references
    state :conditions

    state :complete do
      validates :first_name, :middle_name, :last_name, :presence => true
      validates :current_address, :city, :state, :zip, :presence => true
      validates :home_phone, :email, :begin_work, :presence => true


      validates :background_check_agreement_date,
                :drug_test_agreement_date,
                :medical_release_agreement_date,
                :presence => true
    end

    transition :from => :personal,   :to => :education,  :on => :next
    transition :from => :education,  :to => :employment, :on => :next
    transition :from => :employment, :to => :references, :on => :next
    transition :from => :references, :to => :conditions, :on => :next
    transition :from => :conditions, :to => :complete,   :on => :next
  end

  scope :complete, -> { where(step: 'complete') }
  scope :incomplete, -> { where("step != ?", 'complete') }

  def user_editable?
    !self.complete?
  end

  def complete_state?
    self.step == 'conditions'
  end

  def past_state(state)
    state = state.to_sym
    states = EmploymentApplication.state_machines[:step].states.map &:name
    return states.index(state) < states.index(self.step.to_sym)
  end
end
