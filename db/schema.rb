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

ActiveRecord::Schema.define(version: 20170429044726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "cells", force: :cascade do |t|
    t.integer  "contest_id",              null: false
    t.integer  "user_id",                 null: false
    t.string   "position",   default: [], null: false, array: true
    t.string   "result",     default: [], null: false, array: true
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "positionx"
    t.string   "positiony"
  end

  create_table "contests", force: :cascade do |t|
    t.integer  "cell_value",                                                                  null: false
    t.string   "home_axis",      default: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], null: false, array: true
    t.string   "away_axis",      default: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], null: false, array: true
    t.string   "reserve",        default: "50"
    t.string   "sport",                                                                       null: false
    t.string   "prizes",         default: [],                                                              array: true
    t.string   "available_nums", default: [],                                                              array: true
    t.datetime "created_at",                                                                  null: false
    t.datetime "updated_at",                                                                  null: false
    t.string   "home_team"
    t.string   "away_team"
    t.datetime "event_date"
    t.string   "box_score"
    t.boolean  "archived",       default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name",                                   null: false
    t.string   "avatar"
    t.date     "birthday"
    t.string   "street_address"
    t.string   "apt_num"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "phone_num"
    t.boolean  "admin?",                 default: false
    t.string   "provider"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
