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

ActiveRecord::Schema.define(version: 20160826085624) do

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
    t.integer  "room_id"
    t.boolean  "rollback"
    t.boolean  "discount"
    t.index ["customer_id"], name: "index_book_rooms_on_customer_id"
    t.index ["room_id"], name: "index_book_rooms_on_room_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "sex"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["first_name", "last_name"], name: "index_customers_on_first_name_and_last_name", unique: true
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
