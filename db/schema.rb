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

ActiveRecord::Schema.define(version: 20150815172225) do

  create_table "agents", force: :cascade do |t|
    t.integer  "contact_id"
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.integer  "contact_id"
    t.string   "status"
    t.integer  "agent_id"
    t.integer  "int_contact_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "public_id"
    t.string   "name"
    t.string   "last_name"
    t.string   "address"
    t.string   "city"
    t.string   "country"
    t.string   "zip"
    t.string   "phone"
    t.string   "mobile"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_expenses", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "provider_service"
    t.integer  "amount"
    t.integer  "price"
    t.integer  "total_price"
    t.integer  "paid"
    t.integer  "provider_incoive"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "event_incomes", force: :cascade do |t|
    t.integer  "event_id"
    t.string   "description"
    t.integer  "amount"
    t.integer  "price"
    t.integer  "total_price"
    t.integer  "amount_paid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "event_participants", force: :cascade do |t|
    t.integer  "participant_id"
    t.integer  "total_participants"
    t.integer  "paid"
    t.integer  "total_cost"
    t.integer  "debt"
    t.integer  "receipt"
    t.integer  "invoice"
    t.text     "note"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "public_id"
    t.integer  "client_id"
    t.string   "name"
    t.string   "event_type"
    t.string   "location"
    t.integer  "occasional_client_id"
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "nights"
    t.integer  "participants_num"
    t.integer  "agent_id"
    t.integer  "client_invoice"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "participants", force: :cascade do |t|
    t.integer  "contact_id"
    t.string   "degree"
    t.string   "position"
    t.string   "job"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.integer  "contact_id"
    t.integer  "int_contact_id"
    t.string   "position"
    t.string   "status"
    t.string   "region"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sub_event_participants", force: :cascade do |t|
    t.integer  "participant_id"
    t.integer  "sub_event_id"
    t.integer  "adult_num"
    t.integer  "child_num"
    t.integer  "infant_num"
    t.date     "dates"
    t.string   "room"
    t.string   "more_names"
    t.integer  "total_cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sub_events", force: :cascade do |t|
    t.string   "event_id"
    t.string   "name"
    t.datetime "from_date"
    t.datetime "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
