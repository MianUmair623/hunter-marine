class Contact < ActiveRecord::Base

  validates :name, :title, :phone, :email, presence: true
end