# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190123161538) do

  create_table "auth_tokens", force: :cascade do |t|
    t.integer "customer_id"
    t.string "token"
    t.datetime "expires_at"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_auth_tokens_on_customer_id"
  end

  create_table "booking_slots", force: :cascade do |t|
    t.integer "booking_id"
    t.date "date", null: false
    t.time "from", null: false
    t.time "to", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_slots_on_booking_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "studio_id"
    t.integer "status", null: false
    t.text "message"
    t.string "card_holder_name", null: false
    t.string "country", null: false
    t.text "billing_address", null: false
    t.string "postal_code", null: false
    t.string "city", null: false
    t.string "state"
    t.string "card_number"
    t.string "expiry_month"
    t.string "expiry_year"
    t.string "cvv"
    t.float "sub_total", null: false
    t.float "studiotime_fee", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["studio_id"], name: "index_bookings_on_studio_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.text "bio", default: ""
    t.string "website", default: ""
    t.string "facebook_url", default: ""
    t.string "twitter_handle", default: ""
    t.string "instagram_handle", default: ""
    t.string "streaming_url", default: ""
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "mobile", default: ""
    t.boolean "email_verified", default: false
    t.boolean "mobile_verified", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "url", null: false
    t.string "imageable_type"
    t.integer "imageable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id"
  end

  create_table "studios", force: :cascade do |t|
    t.integer "customer_id"
    t.string "name", null: false
    t.text "description", null: false
    t.integer "min_booking_time", null: false
    t.text "amenities", null: false
    t.text "main_equipment", null: false
    t.text "past_clients"
    t.time "studio_hours", null: false
    t.text "rules", null: false
    t.text "reviews", null: false
    t.text "owner_details", null: false
    t.text "address", null: false
    t.string "landmark", default: ""
    t.string "lat", null: false
    t.string "lng", null: false
    t.float "price_per_hour", null: false
    t.boolean "audio_eng_included", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_studios_on_customer_id"
  end

end
