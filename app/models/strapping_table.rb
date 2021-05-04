class StrappingTable < ActiveRecord::Base
  
  validates :barge_number, :year_built, :shipyard, presence: true
  validates_uniqueness_of :barge_number

  has_attached_file :strappings
  do_not_validate_attachment_file_type :strappings
  default_scope { order('barge_number ASC') }
end