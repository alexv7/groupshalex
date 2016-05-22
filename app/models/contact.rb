class Contact < ActiveRecord::Base
  validates :name, presence: true
  VALID_PHONE_NUMBER_REGEX = /\A(\+\d{1,2})?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}\z/
  validates :phone_number, length: {maximum: 17}, format: { with: VALID_PHONE_NUMBER_REGEX }, allow_nil: true
  validates :message, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }, allow_nil: true
end
