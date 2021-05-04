class Career < ActiveRecord::Base
  acts_as_list

  validates :title, presence: true
  validates :location, presence: true

  default_scope { order('position ASC') }
end
