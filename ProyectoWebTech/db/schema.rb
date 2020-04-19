# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_19_085919) do

  create_table "comment_comment_reports", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "comment_comment_id"
    t.index ["comment_comment_id"], name: "index_comment_comment_reports_on_comment_comment_id"
    t.index ["user_id"], name: "index_comment_comment_reports_on_user_id"
  end

  create_table "comment_comments", force: :cascade do |t|
    t.text "message"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_comment_id"
    t.integer "user_id"
    t.index ["event_comment_id"], name: "index_comment_comments_on_event_comment_id"
    t.index ["user_id"], name: "index_comment_comments_on_user_id"
  end

  create_table "date_notifications", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_date_notifications_on_event_id"
    t.index ["user_id"], name: "index_date_notifications_on_user_id"
  end

  create_table "event_comment_reports", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_comment_id"
    t.index ["event_comment_id"], name: "index_event_comment_reports_on_event_comment_id"
    t.index ["user_id"], name: "index_event_comment_reports_on_user_id"
  end

  create_table "event_comments", force: :cascade do |t|
    t.text "message"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.integer "user_id"
    t.index ["event_id"], name: "index_event_comments_on_event_id"
    t.index ["user_id"], name: "index_event_comments_on_user_id"
  end

  create_table "event_date_votes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_date_id"
    t.integer "user_id"
    t.index ["event_date_id"], name: "index_event_date_votes_on_event_date_id"
    t.index ["user_id"], name: "index_event_date_votes_on_user_id"
  end

  create_table "event_dates", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_event_dates_on_event_id"
  end

  create_table "event_file_reports", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_file_id"
    t.index ["event_file_id"], name: "index_event_file_reports_on_event_file_id"
    t.index ["user_id"], name: "index_event_file_reports_on_user_id"
  end

  create_table "event_files", force: :cascade do |t|
    t.string "file_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_event_files_on_event_id"
  end

  create_table "event_invitations", force: :cascade do |t|
    t.string "message"
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_event_invitations_on_event_id"
    t.index ["user_id"], name: "index_event_invitations_on_user_id"
  end

  create_table "event_reports", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_event_reports_on_event_id"
    t.index ["user_id"], name: "index_event_reports_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "ubication"
    t.text "description"
    t.string "bannerPhoto"
    t.boolean "public"
    t.string "decition"
    t.integer "min_vote"
    t.datetime "start_voting"
    t.datetime "finish_voting"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "organization_events", force: :cascade do |t|
    t.boolean "public"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_id"
    t.integer "event_id"
    t.index ["event_id"], name: "index_organization_events_on_event_id"
    t.index ["organization_id"], name: "index_organization_events_on_organization_id"
  end

  create_table "organization_file_reports", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_file_id"
    t.integer "user_id"
    t.index ["organization_file_id"], name: "index_organization_file_reports_on_organization_file_id"
    t.index ["user_id"], name: "index_organization_file_reports_on_user_id"
  end

  create_table "organization_files", force: :cascade do |t|
    t.string "file_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_id"
    t.index ["organization_id"], name: "index_organization_files_on_organization_id"
  end

  create_table "organization_members", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.integer "organization_id"
    t.index ["organization_id"], name: "index_organization_members_on_organization_id"
    t.index ["user_id"], name: "index_organization_members_on_user_id"
  end

  create_table "organization_reports", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "organization_id"
    t.integer "user_id"
    t.index ["organization_id"], name: "index_organization_reports_on_organization_id"
    t.index ["user_id"], name: "index_organization_reports_on_user_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "banner_photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_organizations_on_user_id"
  end

  create_table "user_reports", force: :cascade do |t|
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "profile_photo"
    t.string "location"
    t.boolean "admin"
    t.datetime "last_acces"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comment_comment_reports", "comment_comments"
  add_foreign_key "comment_comment_reports", "users"
  add_foreign_key "comment_comments", "event_comments"
  add_foreign_key "comment_comments", "users"
  add_foreign_key "date_notifications", "events"
  add_foreign_key "date_notifications", "users"
  add_foreign_key "event_comment_reports", "event_comments"
  add_foreign_key "event_comment_reports", "users"
  add_foreign_key "event_comments", "events"
  add_foreign_key "event_comments", "users"
  add_foreign_key "event_date_votes", "event_dates"
  add_foreign_key "event_date_votes", "users"
  add_foreign_key "event_dates", "events"
  add_foreign_key "event_file_reports", "event_files"
  add_foreign_key "event_file_reports", "users"
  add_foreign_key "event_files", "events"
  add_foreign_key "event_invitations", "events"
  add_foreign_key "event_invitations", "users"
  add_foreign_key "event_reports", "events"
  add_foreign_key "event_reports", "users"
  add_foreign_key "events", "users"
  add_foreign_key "organization_events", "events"
  add_foreign_key "organization_events", "organizations"
  add_foreign_key "organization_file_reports", "organization_files"
  add_foreign_key "organization_file_reports", "users"
  add_foreign_key "organization_files", "organizations"
  add_foreign_key "organization_members", "organizations"
  add_foreign_key "organization_members", "users"
  add_foreign_key "organization_reports", "organizations"
  add_foreign_key "organization_reports", "users"
  add_foreign_key "organizations", "users"
end
