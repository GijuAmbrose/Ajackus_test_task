class UserMessage < ApplicationRecord
  validates :first_name, :message, :last_name, :email, :phone_number, presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :first_name, uniqueness: { scope: :first_name }
  validates_format_of :phone_number, :with =>  /\d[0-9]\)*\z/ , :message => "Only positive number without spaces are allowed"
end

