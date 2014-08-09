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

ActiveRecord::Schema.define(version: 20140727210007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bus_routes", force: true do |t|
    t.string   "name"
    t.float    "lat_a"
    t.float    "lng_a"
    t.float    "lat_b"
    t.float    "lng_b"
    t.string   "departament"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bus_states", force: true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "lng"
    t.integer  "bus_route_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bus_states", ["bus_route_id"], name: "index_bus_states_on_bus_route_id", using: :btree

  create_table "complaints", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "bus_route"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "username"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
