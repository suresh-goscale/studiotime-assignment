class BookingSlot < ApplicationRecord
  belongs_to :booking
  validates_presence_of :date, :from, :to
end
