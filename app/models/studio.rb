class Studio < ApplicationRecord
  belongs_to :customer
  has_many :bookings
  has_many :booking_slots, through: :bookings
  has_many :pictures, as: :imageable

  validates_presence_of :name, :description, :min_booking_time,
                        :amenities, :main_equipment,:past_clients,
                        :studio_hours, :rules, :reviews, :address,
                        :lat, :lng, :price_per_hour, :audio_eng_included

end
