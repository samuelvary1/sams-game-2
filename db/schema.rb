# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 15) do

  create_table "characters", force: :cascade do |t|
    t.string "rank"
    t.string "first_name"
    t.string "last_name"
    t.string "role"
    t.string "birthplace"
    t.text   "bio"
  end

  create_table "items", force: :cascade do |t|
    t.string  "name"
    t.text    "description"
    t.integer "location_id"
    t.integer "character_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text   "description"
    t.string "items"
    t.string "key_item"
  end

end
