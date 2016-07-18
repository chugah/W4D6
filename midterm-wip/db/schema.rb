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

ActiveRecord::Schema.define(version: 20160422152826) do

  create_table "companies", force: :cascade do |t|
    t.string  "company_name"
    t.string  "url"
    t.date    "created_at"
    t.date    "updated_at"
    t.integer "location_id"
    t.integer "industry_id"
    t.string  "username"
    t.string  "password"
  end

  create_table "company_profiles", force: :cascade do |t|
    t.integer "company_id"
    t.string  "top_selling_item"
    t.string  "least_selling_item"
    t.string  "legal_structure"
    t.integer "annual_sales"
    t.integer "avg_unit_price"
    t.integer "avg_cost_price"
    t.integer "overheads"
    t.integer "staff_cost"
    t.integer "volume_of_trx"
    t.integer "avg_business_open_hours"
    t.integer "taxes"
    t.integer "current_liabilities"
    t.integer "interest"
    t.date    "created_at"
    t.date    "updated_at"
  end

  create_table "external_data_repositories", force: :cascade do |t|
    t.string "category"
    t.string "value_1"
    t.string "value_2"
    t.date   "created_at"
    t.date   "updated_at"
  end

  create_table "industries", force: :cascade do |t|
    t.string "industry_name"
    t.date   "created_at"
    t.date   "updated_at"
  end

  create_table "locations", force: :cascade do |t|
    t.string "street_address"
    t.string "city"
    t.string "province"
    t.string "postal_code"
    t.date   "created_at"
    t.date   "updated_at"
  end

  create_table "results", force: :cascade do |t|
    t.string  "category"
    t.string  "text_value_1"
    t.integer "data_value_1"
    t.integer "data_value_2"
    t.date    "point_in_time"
    t.date    "created_at"
    t.date    "updated_at"
    t.integer "company_id"
  end

  create_table "users", force: :cascade do |t|
    t.string  "firstname"
    t.string  "lastname"
    t.string  "username"
    t.string  "email"
    t.string  "password",      null: false
    t.string  "session_token"
    t.date    "created_at"
    t.date    "updated_at"
    t.integer "company_id"
  end

end
