class CreateStudios < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.references :customer
      t.string     :name,             null: false
      t.text       :description,      null: false
      t.integer    :min_booking_time, null: false
      t.text       :amenities,        null: false
      t.text       :main_equipment,   null: false
      t.text       :past_clients
      t.time       :studio_hours,     null: false
      t.text       :rules,            null: false
      t.text       :reviews,          null: false
      t.text       :owner_details,    null: false
      t.text       :address,          null: false
      t.string     :landmark,         default: ''
      t.string     :lat,              null: false
      t.string     :lng,              null: false
      t.float      :price_per_hour,   null: false
      t.boolean    :audio_eng_included,null: false
      t.timestamps
    end
  end
end
