# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2025_01_30_195320) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accel_cfis", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "advance_trainings", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.text "comments"
    t.string "certificate_sought"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aviations", force: :cascade do |t|
    t.string "attendee_first_name"
    t.string "attendee_last_name"
    t.integer "attendee_age"
    t.string "phone"
    t.string "email"
    t.string "parent_first_name"
    t.string "parent_last_name"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_downloads", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "phone"
    t.string "email"
  end

  create_table "camps", force: :cascade do |t|
    t.string "attendee_first_name"
    t.string "attendee_last_name"
    t.integer "attendee_age"
    t.string "phone"
    t.string "email"
    t.string "parent_first_name"
    t.string "parent_last_name"
    t.string "camp_date"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "checkouts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "certifications"
    t.string "interested_aircraft"
    t.date "preferred_date"
    t.string "preferred_availability"
    t.date "alternate_date"
    t.string "alternate_availability"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discover_flights", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "aircraft"
    t.date "preferred_date"
    t.string "preferred_availability"
    t.date "alternate_date"
    t.string "alternate_availability"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.text "goals"
    t.string "previous_training"
    t.text "comments"
    t.date "preferred_date"
    t.string "preferred_availability"
    t.date "alternate_date"
    t.string "alternate_availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
    t.string "interested_in"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "lacrm_contact_id"
    t.string "lacrm_response_code"
    t.text "lacrm_response_body"
    t.string "make"
    t.string "model"
    t.string "n_nummber"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.date "post_date"
    t.string "author"
    t.text "post_content"
    t.string "category"
    t.string "meta_desription"
    t.string "meta_keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "slug"
    t.index ["slug"], name: "index_posts_on_slug", unique: true
  end

  create_table "quiz_results", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "program"
    t.text "why_pilot"
    t.string "previous_training"
    t.text "wings_lift"
    t.text "goals"
    t.date "preferred_date"
    t.string "preferred_availability"
    t.date "alternate_date"
    t.string "alternate_availability"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "learn_style"
    t.string "structure"
    t.text "guidance"
  end

  create_table "registration_forms", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "emergency_name"
    t.string "emergency_phone"
    t.string "emergency_email"
    t.string "course"
    t.integer "hours_planned"
    t.text "goal"
    t.string "financed"
    t.float "total_time"
    t.string "certificates_held"
    t.boolean "committed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "availability"
    t.text "time_details"
  end

  create_table "reimbursements", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "entry_date"
    t.string "amount"
    t.string "preferred_payment"
    t.string "username"
    t.string "upload"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.string "email"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
