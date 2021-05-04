class ContactSubmission < ActiveRecord::Base

  validates :location, :name, :email, :message, presence: true
  validates :email, email: true

  scope :recent, -> (num) { order('created_at DESC').limit(num) }
end
