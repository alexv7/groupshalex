class Contact < ActiveRecord::Base
  validates :name, :phone_number, :message, :email, presence: true
end
