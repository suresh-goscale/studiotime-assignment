class Customer < ApplicationRecord
  has_many :studios
  has_many :bookings, source: :booking
  has_one :picture, as: :imageable
  has_many :auth_tokens

  has_secure_password

  validates_presence_of :first_name, :last_name, :email
end
