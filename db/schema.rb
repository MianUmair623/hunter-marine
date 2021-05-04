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

ActiveRecord::Schema.define(version: 20190911212336) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "boatpositions", force: :cascade do |t|
    t.string   "boatname",    limit: 255
    t.integer  "mile_marker", limit: 4
    t.string   "direction",   limit: 255
    t.string   "river",       limit: 255
    t.string   "delay",       limit: 255
    t.string   "turn",        limit: 255
    t.string   "charter",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",    limit: 4
    t.boolean  "active",                  default: true
  end

  add_index "boatpositions", ["position"], name: "index_boatpositions_on_position", using: :btree

  create_table "careers", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "location",    limit: 255
    t.text     "description", limit: 65535
    t.integer  "position",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "careers", ["position"], name: "index_careers_on_position", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size",    limit: 4
    t.integer  "assetable_id",      limit: 4
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width",             limit: 4
    t.integer  "height",            limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "contact_submissions", force: :cascade do |t|
    t.string   "location",   limit: 255
    t.string   "subject",    limit: 255
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "title",      limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_applications", force: :cascade do |t|
    t.string   "position",                        limit: 255
    t.string   "first_name",                      limit: 255
    t.string   "middle_name",                     limit: 255
    t.string   "last_name",                       limit: 255
    t.string   "current_address",                 limit: 255
    t.string   "apt_number",                      limit: 255
    t.string   "city",                            limit: 255
    t.string   "state",                           limit: 255
    t.string   "zip",                             limit: 255
    t.string   "home_phone",                      limit: 255
    t.string   "cell_phone",                      limit: 255
    t.string   "email",                           limit: 255
    t.boolean  "authorized_to_work"
    t.boolean  "friends_at_hunter_marine"
    t.string   "friends",                         limit: 255
    t.string   "begin_work",                      limit: 255
    t.boolean  "drug_test"
    t.string   "drug_test_dates",                 limit: 255
    t.boolean  "marine_license"
    t.boolean  "drivers_license"
    t.string   "license_issuing_state",           limit: 255
    t.string   "license_expiration_date",         limit: 255
    t.boolean  "agree_to_background_check"
    t.string   "background_check_agreement_date", limit: 255
    t.boolean  "agree_to_drug_test"
    t.string   "drug_test_agreement_date",        limit: 255
    t.boolean  "agree_to_medical_release"
    t.string   "medical_release_agreement_date",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "twic_card"
    t.string   "twic_expiration",                 limit: 255
    t.boolean  "felon"
    t.string   "felon_explanation",               limit: 255
    t.string   "step",                            limit: 255
    t.datetime "completed_at"
  end

  create_table "employment_education_records", force: :cascade do |t|
    t.integer  "employment_application_id", limit: 4
    t.string   "school_name",               limit: 255
    t.string   "address",                   limit: 255
    t.string   "years",                     limit: 255
    t.string   "diploma",                   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_history_records", force: :cascade do |t|
    t.integer  "employment_application_id", limit: 4
    t.string   "name_of_employer",          limit: 255
    t.string   "phone",                     limit: 255
    t.string   "address",                   limit: 255
    t.string   "city",                      limit: 255
    t.string   "state",                     limit: 255
    t.string   "zip",                       limit: 255
    t.string   "name_of_supervisor",        limit: 255
    t.string   "position_held",             limit: 255
    t.string   "job_duties",                limit: 255
    t.string   "date_of_employment",        limit: 255
    t.string   "thru",                      limit: 255
    t.string   "reason_for_leaving",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_references", force: :cascade do |t|
    t.integer  "employment_application_id", limit: 4
    t.string   "name",                      limit: 255
    t.string   "number",                    limit: 255
    t.string   "relationship",              limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fuel_infos", force: :cascade do |t|
    t.string   "price",      limit: 255
    t.string   "surcharge",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_articles", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "text",               limit: 65535
    t.string   "category",           limit: 255
    t.string   "file_file_name",     limit: 255
    t.string   "file_content_type",  limit: 255
    t.integer  "file_file_size",     limit: 4
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "strapping_tables", force: :cascade do |t|
    t.string   "barge_number",            limit: 255
    t.string   "year_built",              limit: 255
    t.string   "shipyard",                limit: 255
    t.string   "strappings_file_name",    limit: 255
    t.string   "strappings_content_type", limit: 255
    t.integer  "strappings_file_size",    limit: 4
    t.datetime "strappings_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes",                   limit: 65535
  end

end
