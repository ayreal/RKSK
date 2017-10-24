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

ActiveRecord::Schema.define(version: 20171024185844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "keyword"
  end

  create_table "locations", force: :cascade do |t|
    t.string "description"
    t.integer "temp_f"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "pack_items", force: :cascade do |t|
    t.integer "pack_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "item1_id"
    t.integer "item2_id"
    t.integer "item3_id"
    t.integer "item4_id"
  end

  create_table "packs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "location_name"
    t.integer "temp_f"
    t.string "weather_desc"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
