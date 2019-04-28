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

ActiveRecord::Schema.define(version: 2019_04_28_123635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coffee_flavors", force: :cascade do |t|
    t.string "name"
    t.bigint "coffee_id"
    t.bigint "flavor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_id"], name: "index_coffee_flavors_on_coffee_id"
    t.index ["flavor_id"], name: "index_coffee_flavors_on_flavor_id"
  end

  create_table "coffee_origins", force: :cascade do |t|
    t.string "name"
    t.bigint "coffee_id"
    t.bigint "origin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_id"], name: "index_coffee_origins_on_coffee_id"
    t.index ["origin_id"], name: "index_coffee_origins_on_origin_id"
  end

  create_table "coffee_processing_methods", force: :cascade do |t|
    t.string "name"
    t.bigint "coffee_id"
    t.bigint "processing_method_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_id"], name: "index_coffee_processing_methods_on_coffee_id"
    t.index ["processing_method_id"], name: "index_coffee_processing_methods_on_processing_method_id"
  end

  create_table "coffee_varieties", force: :cascade do |t|
    t.string "name"
    t.bigint "coffee_id"
    t.bigint "variety_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_id"], name: "index_coffee_varieties_on_coffee_id"
    t.index ["variety_id"], name: "index_coffee_varieties_on_variety_id"
  end

  create_table "coffees", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "roaster"
    t.string "producer"
    t.string "washing_station"
    t.integer "min_altitude"
    t.integer "max_altitude"
    t.string "season_start"
    t.string "season_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flavors", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offerings", force: :cascade do |t|
    t.string "name"
    t.bigint "coffee_id"
    t.bigint "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coffee_id"], name: "index_offerings_on_coffee_id"
    t.index ["shop_id"], name: "index_offerings_on_shop_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string "continent"
    t.string "country"
    t.string "state"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "zone"
  end

  create_table "processing_methods", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.string "hours"
    t.string "address"
    t.string "coordinates"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "varieties", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "coffee_flavors", "coffees"
  add_foreign_key "coffee_flavors", "flavors"
  add_foreign_key "coffee_origins", "coffees"
  add_foreign_key "coffee_origins", "origins"
  add_foreign_key "coffee_processing_methods", "coffees"
  add_foreign_key "coffee_processing_methods", "processing_methods"
  add_foreign_key "coffee_varieties", "coffees"
  add_foreign_key "coffee_varieties", "varieties"
  add_foreign_key "offerings", "coffees"
  add_foreign_key "offerings", "shops"
end
