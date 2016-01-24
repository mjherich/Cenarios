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

ActiveRecord::Schema.define(version: 20160124224331) do

  create_table "applicants", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.string   "street_address"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.string   "dob"
    t.string   "social_sec"
    t.string   "position"
    t.string   "citizen"
    t.string   "worked_for"
    t.string   "worked_for_when"
    t.string   "felony"
    t.string   "felony_explanation"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_transportation_infos", force: :cascade do |t|
    t.string   "vehicle_make"
    t.string   "vehicle_model"
    t.integer  "vehicle_year"
    t.string   "vin"
    t.string   "license_plate"
    t.string   "driver_license_number"
    t.string   "state_issued"
    t.string   "issue_date"
    t.string   "insurance_company"
    t.string   "insurance_agent"
    t.string   "insurance_agent_address"
    t.string   "liability_coverage"
    t.string   "traffic_violations"
    t.integer  "applicant_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "personal_transportation_infos", ["applicant_id"], name: "index_personal_transportation_infos_on_applicant_id"

  create_table "previous_employments", force: :cascade do |t|
    t.string   "company"
    t.string   "phone"
    t.string   "job_title"
    t.string   "supervisor"
    t.string   "may_we_contact"
    t.integer  "applicant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "previous_employments", ["applicant_id"], name: "index_previous_employments_on_applicant_id"

  create_table "references", force: :cascade do |t|
    t.string   "company"
    t.string   "phone"
    t.string   "job_title"
    t.string   "supervisor"
    t.string   "may_we_contact"
    t.integer  "applicant_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "references", ["applicant_id"], name: "index_references_on_applicant_id"

end
