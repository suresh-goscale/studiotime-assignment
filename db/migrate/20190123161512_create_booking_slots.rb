class CreateBookingSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_slots do |t|
      t.references :booking
      t.date :date , null: false
      t.time :from , null: false
      t.time :to   , null: false
      t.timestamps
    end
  end
end
