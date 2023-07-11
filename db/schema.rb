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

ActiveRecord::Schema[7.0].define(version: 2023_07_11_025606) do
  create_table "bewerbungs", force: :cascade do |t|
    t.integer "job_posting_id", null: false
    t.string "resume"
    t.string "cover_letter"
    t.string "files"
    t.text "notes"
    t.integer "status"
    t.date "applied_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_posting_id"], name: "index_bewerbungs_on_job_posting_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "headquarter"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_postings", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "position"
    t.integer "category"
    t.string "city"
    t.string "country"
    t.text "description"
    t.integer "language"
    t.string "source"
    t.date "posted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_job_postings_on_company_id"
  end

  create_table "stages", force: :cascade do |t|
    t.integer "bewerbung_id", null: false
    t.integer "name"
    t.integer "status"
    t.datetime "scheduled_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bewerbung_id"], name: "index_stages_on_bewerbung_id"
  end

  add_foreign_key "bewerbungs", "job_postings"
  add_foreign_key "job_postings", "companies"
  add_foreign_key "stages", "bewerbungs"
end
