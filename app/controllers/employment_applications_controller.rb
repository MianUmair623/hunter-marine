class EmploymentApplicationsController < ApplicationController
  before_filter :load_application
  before_filter :ensure_application_is_editable

  def update
    if @application.update_attributes(employment_application_params) && @application.next
      # @application.next

      if @application.complete?
        @application.completed_at = lambda { Time.now }.call
        @application.save
        EmploymentApplicationMailer.application_email(@application).deliver
        session[:application_id] = nil
      end

      redirect_to step_employment_applications_path(@application.step)
    else
      flash.now[:errors] = "Please correct the following issues: <br /> #{@application.errors.full_messages.join('<br />')}".html_safe
      render :edit
    end
  end

  private
    def load_application
      @application = current_application
      redirect_to root_employment_applications_path and return unless @application

      @application.step = params[:step] unless params[:step].nil?

      if params[:employment_application].nil? && @application.employment? && @application.employment_history_records.empty?
        @application.employment_history_records.build
      end

      if params[:employment_application].nil? && @application.education? && @application.employment_education_records.empty?
        @application.employment_education_records.build
      end

      if params[:employment_application].nil? && @application.references? && @application.employment_references.empty?
        @application.employment_references.build
      end

    end

    def ensure_application_is_editable
      unless @application.user_editable?
        @new_application = EmploymentApplication.new
        @new_application.save(validate: false)
        session[:application_id] = @new_application.id
        redirect_to root_employment_applications_path
      end
    end

    def employment_application_params
      params.require(:employment_application).permit(
        :position,
        :first_name,
        :middle_name,
        :last_name,
        :current_address,
        :apt_number,
        :city,
        :state,
        :zip,
        :home_phone,
        :cell_phone,
        :email,
        :authorized_to_work,
        :friends_at_hunter_marine,
        :friends,
        :begin_work,
        :drug_test,
        :drug_test_dates,
        :marine_license,
        :drivers_license,
        :license_issuing_state,
        :license_expiration_date,
        :agree_to_background_check,
        :background_check_agreement_date,
        :agree_to_drug_test,
        :drug_test_agreement_date,
        :agree_to_medical_release,
        :medical_release_agreement_date,
        :twic_card,
        :twic_expiration,
        :felon,
        :felon_explanation,
        :step,
        :employment_references_attributes => [
          :id,
          :name,
          :number,
          :relationship
        ],
        :employment_history_records_attributes => [
          :id,
          :name_of_employer,
          :phone,
          :address,
          :city,
          :state,
          :zip,
          :name_of_supervisor,
          :position_held,
          :job_duties,
          :date_of_employment,
          :thru,
          :reason_for_leaving
        ],
        :employment_education_records_attributes => [
          :id,
          :school_name,
          :address,
          :years,
          :diploma
        ]
      )
    end
end
