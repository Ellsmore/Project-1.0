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

ActiveRecord::Schema.define(version: 20160712122456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string   "accepted"
    t.string   "short_list"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "candidates", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "email"
    t.integer  "candidate_contact_number"
    t.string   "gender"
    t.string   "residency_status"
    t.string   "residental_address"
    t.string   "residental_suburb"
    t.string   "residental_state"
    t.integer  "residental_postcode"
    t.string   "postal_address"
    t.string   "postal_suburb"
    t.string   "postal_state"
    t.integer  "postal_postcode"
    t.text     "introduction"
    t.string   "education"
    t.string   "profession"
    t.string   "skills"
    t.string   "other_skills"
    t.string   "certificates_licenses"
    t.string   "job_title"
    t.string   "job_duration"
    t.string   "company_name"
    t.text     "job_description"
    t.string   "reference_name"
    t.integer  "reference_contact_number"
    t.binary   "picture"
    t.binary   "resume"
    t.binary   "photo_id"
    t.string   "consent_to_tests"
    t.string   "travelling_distance"
    t.string   "vehicle_access"
    t.string   "availability"
    t.string   "used_marketing_channel"
    t.string   "used_agencies"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "business_name"
    t.string   "address"
    t.string   "suburb"
    t.string   "state"
    t.integer  "postcode"
    t.string   "contact_name"
    t.integer  "mobile_number"
    t.integer  "phone_number"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "job_ads", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "employment_type"
    t.string   "address"
    t.string   "suburb"
    t.string   "state"
    t.integer  "postcode"
    t.string   "skills"
    t.string   "liscenses_certificates"
    t.string   "drivers_license"
    t.string   "transport"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.integer  "age"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
