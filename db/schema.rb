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

ActiveRecord::Schema.define(version: 20140225042757) do

  create_table "items", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "drawing_number"
    t.integer  "qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_items", force: true do |t|
    t.integer  "item_id"
    t.integer  "session_id"
    t.integer  "session_qty"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.string   "name"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description", default: "update description"
    t.integer  "trip_id",     default: 1
  end

  create_table "trips", force: true do |t|
    t.string   "session_id"
    t.string   "date"
    t.string   "trip_item"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
