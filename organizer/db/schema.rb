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

ActiveRecord::Schema.define(version: 20160828192033) do

  create_table "bride_accessories", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.date     "size"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bride_accessories_on_user_id"
  end

  create_table "bride_beauticans", force: :cascade do |t|
    t.string   "name"
    t.date     "fitting"
    t.date     "meeting"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bride_beauticans_on_user_id"
  end

  create_table "bride_dresses", force: :cascade do |t|
    t.string   "model"
    t.integer  "size"
    t.date     "fitting"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bride_dresses_on_user_id"
  end

  create_table "bride_hairdressers", force: :cascade do |t|
    t.string   "name"
    t.date     "fitting"
    t.date     "meeting"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bride_hairdressers_on_user_id"
  end

  create_table "church_bests", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "church_ceremonies", force: :cascade do |t|
    t.string   "name"
    t.text     "adress"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "church_decorations", force: :cascade do |t|
    t.text     "name"
    t.string   "colour"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "church_rings", force: :cascade do |t|
    t.string   "name"
    t.integer  "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "groom_accessories", force: :cascade do |t|
    t.text     "name"
    t.string   "colour"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "groom_suits", force: :cascade do |t|
    t.string   "model"
    t.integer  "size"
    t.datetime "fitting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string   "name"
    t.string   "subname"
    t.text     "description"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "invitation_sent"
    t.boolean  "invitation_confirmed"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wedding_decorations", force: :cascade do |t|
    t.text     "name"
    t.string   "colour"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "wedding_rooms", force: :cascade do |t|
    t.string   "name"
    t.text     "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "wedding_services", force: :cascade do |t|
    t.string   "who"
    t.text     "name"
    t.text     "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

end
