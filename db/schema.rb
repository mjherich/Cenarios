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

ActiveRecord::Schema.define(version: 20160303221804) do

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

  create_table "employees", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.date     "date"
    t.string   "address"
    t.string   "apartment_num"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "email"
    t.string   "start_date"
    t.string   "dob"
    t.string   "social_sec"
    t.string   "position"
    t.boolean  "citizen"
    t.boolean  "authorized"
    t.boolean  "worked_previously"
    t.date     "worked_previously_date"
    t.boolean  "felony"
    t.text     "felony_explanation"
    t.string   "company_1"
    t.string   "job_title_1"
    t.string   "company_phone_1"
    t.string   "supervisor_1"
    t.boolean  "reference_1"
    t.date     "from_1"
    t.date     "to_1"
    t.string   "start_salary_1"
    t.string   "end_salary_1"
    t.string   "quit_reason_1"
    t.string   "company_2"
    t.string   "job_title_2"
    t.string   "company_phone_2"
    t.string   "supervisor_2"
    t.boolean  "reference_2"
    t.date     "from_2"
    t.date     "to_2"
    t.string   "start_salary_2"
    t.string   "end_salary_2"
    t.string   "quit_reason_2"
    t.string   "reference_name_1"
    t.string   "relationship_1"
    t.string   "relationship_length_1"
    t.string   "reference_address_1"
    t.string   "reference_phone_1"
    t.string   "reference_name_2"
    t.string   "relationship_2"
    t.string   "relationship_length_2"
    t.string   "reference_address_2"
    t.string   "reference_phone_2"
    t.string   "vehicle_year"
    t.string   "vehicle_make"
    t.string   "vehicle_model"
    t.string   "vehicle_VIN"
    t.string   "license_plate_num"
    t.string   "drivers_license_num"
    t.string   "drivers_license_state"
    t.date     "drivers_license_expiration"
    t.string   "insurance_company"
    t.date     "insurance_effective_date"
    t.date     "insurance_expiration_date"
    t.string   "insurance_agent_name"
    t.string   "insurance_agent_phone"
    t.string   "insurance_agent_address"
    t.integer  "liability_coverage_amount"
    t.date     "violation_date_1"
    t.string   "violation_1"
    t.string   "violation_penalty_1"
    t.date     "violation_date_2"
    t.string   "violation_2"
    t.string   "violation_penalty_2"
    t.date     "violation_date_3"
    t.string   "violation_3"
    t.string   "violation_penalty_3"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
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
