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

ActiveRecord::Schema.define(version: 20141219044751) do

  create_table "availabilities", force: true do |t|
    t.string   "availability_price"
    t.string   "availability_size_range"
    t.string   "availability_website"
    t.integer  "wedding_dress_id"
    t.integer  "retailer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "availabilities", ["retailer_id"], name: "index_availabilities_on_retailer_id"
  add_index "availabilities", ["wedding_dress_id"], name: "index_availabilities_on_wedding_dress_id"

  create_table "designers", force: true do |t|
    t.string   "designer_last_name"
    t.string   "designer_first_name"
    t.string   "designer_website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", force: true do |t|
    t.string   "detail_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fabrics", force: true do |t|
    t.string   "fabric_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "retailers", force: true do |t|
    t.string   "retailer_name"
    t.string   "retailer_address"
    t.string   "retailer_street_name"
    t.string   "retailer_city"
    t.string   "retailer_state"
    t.string   "retailer_website"
    t.string   "retailer_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "silhouettes", force: true do |t|
    t.string   "silhouette_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wedding_dress_details", force: true do |t|
    t.string   "wedding_dress_detail_location"
    t.integer  "wedding_dress_id"
    t.integer  "detail_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wedding_dress_details", ["detail_id"], name: "index_wedding_dress_details_on_detail_id"
  add_index "wedding_dress_details", ["wedding_dress_id"], name: "index_wedding_dress_details_on_wedding_dress_id"

  create_table "wedding_dresses", force: true do |t|
    t.string   "wedding_dress_name"
    t.date     "wedding_dress_year"
    t.string   "wedding_dress_description"
    t.integer  "silhouette_id"
    t.integer  "fabric_id"
    t.integer  "designer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wedding_dresses", ["designer_id"], name: "index_wedding_dresses_on_designer_id"
  add_index "wedding_dresses", ["fabric_id"], name: "index_wedding_dresses_on_fabric_id"
  add_index "wedding_dresses", ["silhouette_id"], name: "index_wedding_dresses_on_silhouette_id"

end
