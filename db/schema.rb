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

ActiveRecord::Schema.define(version: 20180407051609) do

  create_table "donations", force: :cascade do |t|
    t.string "vehicle_size"
    t.string "address"
    t.boolean "receipt_needed?"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "house_cleanings", force: :cascade do |t|
    t.string "address"
    t.integer "num_of_bathrooms"
    t.text "type_of_cleaning"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movings", force: :cascade do |t|
    t.integer "num_of_people"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "others", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shoppings", force: :cascade do |t|
    t.string "store_name", null: false
    t.text "list", null: false
    t.decimal "expected_expense", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.string "due_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.text "addition_info"
  end

end
