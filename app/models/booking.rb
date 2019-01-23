class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :studio
  has_many :booking_slots

  enum status: %I[confirmed declined requested]

  validates_presence_of :status, :card_holder_name,
                        :billing_address, :postal_code,
                        :city, :state, :sub_total, :studiotime_fee

end
