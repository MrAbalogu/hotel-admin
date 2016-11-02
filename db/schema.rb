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

ActiveRecord::Schema.define(version: 20161024122810) do

  create_table "bill_containers", force: :cascade do |t|
    t.string   "name"
    t.boolean  "paid"
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.integer  "customer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "room_id"
    t.boolean  "rollback"
    t.boolean  "checked_out"
    t.index ["customer_id"], name: "index_bill_containers_on_customer_id"
  end

  create_table "bills", force: :cascade do |t|
    t.string   "bill_name"
    t.integer  "bill_price"
    t.boolean  "paid"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "room_id"
    t.integer  "bill_container_id"
    t.integer  "deposit"
    t.integer  "days"
    t.integer  "room_price"
    t.string   "receipt_no"
    t.string   "room_number"
    t.integer  "room"
    t.index ["bill_container_id"], name: "index_bills_on_bill_container_id"
  end

  create_table "book_rooms", force: :cascade do |t|
    t.integer  "room"
    t.string   "room_number"
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "phone_number"
    t.boolean  "checked_out"
    t.integer  "customer_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "days"
    t.integer  "deposit"
    t.string   "bill_price"
    t.string   "room_price"
    t.boolean  "rollback"
    t.boolean  "discount"
    t.integer  "disc_amount"
    t.integer  "room2"
    t.integer  "room3"
    t.integer  "room4"
    t.integer  "room5"
    t.integer  "room6"
    t.integer  "room7"
    t.integer  "room8"
    t.integer  "room9"
    t.integer  "room10"
    t.integer  "room11"
    t.integer  "room12"
    t.integer  "room13"
    t.integer  "room14"
    t.integer  "room15"
    t.integer  "room16"
    t.integer  "room17"
    t.integer  "room18"
    t.integer  "room19"
    t.integer  "room20"
    t.integer  "room21"
    t.integer  "room22"
    t.integer  "room23"
    t.integer  "room24"
    t.integer  "room25"
    t.integer  "room26"
    t.integer  "room27"
    t.integer  "room28"
    t.integer  "room29"
    t.integer  "room30"
    t.string   "room_no2"
    t.string   "room_no3"
    t.string   "room_no4"
    t.string   "room_no5"
    t.string   "room_no6"
    t.string   "room_no7"
    t.string   "room_no8"
    t.string   "room_no9"
    t.string   "room_no10"
    t.string   "room_no11"
    t.string   "room_no12"
    t.string   "room_no13"
    t.string   "room_no14"
    t.string   "room_no15"
    t.string   "room_no16"
    t.string   "room_no17"
    t.string   "room_no18"
    t.string   "room_no19"
    t.string   "room_no20"
    t.string   "room_no21"
    t.string   "room_no22"
    t.string   "room_no23"
    t.string   "room_no24"
    t.string   "room_no25"
    t.string   "room_no26"
    t.string   "room_no27"
    t.string   "room_no28"
    t.string   "room_no29"
    t.string   "room_no30"
    t.integer  "room_price2"
    t.integer  "room_price3"
    t.integer  "room_price4"
    t.integer  "room_price5"
    t.integer  "room_price6"
    t.integer  "room_price7"
    t.integer  "room_price8"
    t.integer  "room_price9"
    t.integer  "room_price10"
    t.integer  "room_price11"
    t.integer  "room_price12"
    t.integer  "room_price13"
    t.integer  "room_price14"
    t.integer  "room_price15"
    t.integer  "room_price16"
    t.integer  "room_price17"
    t.integer  "room_price18"
    t.integer  "room_price19"
    t.integer  "room_price20"
    t.integer  "room_price21"
    t.integer  "room_price22"
    t.integer  "room_price23"
    t.integer  "room_price24"
    t.integer  "room_price25"
    t.integer  "room_price26"
    t.integer  "room_price27"
    t.integer  "room_price28"
    t.integer  "room_price29"
    t.integer  "room_price30"
    t.integer  "bill_price2"
    t.integer  "bill_price3"
    t.integer  "bill_price4"
    t.integer  "bill_price5"
    t.integer  "bill_price6"
    t.integer  "bill_price7"
    t.integer  "bill_price8"
    t.integer  "bill_price9"
    t.integer  "bill_price10"
    t.integer  "bill_price11"
    t.integer  "bill_price12"
    t.integer  "bill_price13"
    t.integer  "bill_price14"
    t.integer  "bill_price15"
    t.integer  "bill_price16"
    t.integer  "bill_price17"
    t.integer  "bill_price18"
    t.integer  "bill_price19"
    t.integer  "bill_price20"
    t.integer  "bill_price21"
    t.integer  "bill_price22"
    t.integer  "bill_price23"
    t.integer  "bill_price24"
    t.integer  "bill_price25"
    t.integer  "bill_price26"
    t.integer  "bill_price27"
    t.integer  "bill_price28"
    t.integer  "bill_price29"
    t.integer  "bill_price30"
    t.integer  "total"
    t.index ["customer_id"], name: "index_book_rooms_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "sex"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["first_name", "last_name"], name: "index_customers_on_first_name_and_last_name", unique: true
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.date     "check_in"
    t.date     "check_out"
    t.string   "room_type"
    t.integer  "people"
    t.boolean  "room"
    t.boolean  "hall"
    t.boolean  "space"
    t.boolean  "pool"
    t.integer  "deposit"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "room_categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "room_number"
    t.boolean  "availability"
    t.boolean  "neatness"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "room_category_id"
    t.integer  "room_price"
    t.string   "room_type"
    t.boolean  "faulty"
    t.string   "fault_type"
    t.index ["room_category_id"], name: "index_rooms_on_room_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password"
  end

end
