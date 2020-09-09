class UserMessage < ApplicationRecord
  validates :first_name, :message, :last_name, :email, :phone_number, presence: true 
end

