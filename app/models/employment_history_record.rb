class EmploymentHistoryRecord < ActiveRecord::Base
  belongs_to :employment_application
end
