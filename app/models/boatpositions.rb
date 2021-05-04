class Boatpositions < ActiveRecord::Base

  acts_as_list

  default_scope { order('boatname ASC') }

  scope :active, -> { where(active: true)}

  validates_format_of :mile_marker, :with => /[0-9]/
end
