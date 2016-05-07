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

ActiveRecord::Schema.define(version: 20160507013145) do

  create_table "disciplines", force: :cascade do |t|
    t.integer  "code"
    t.string   "name"
    t.string   "description"
    t.integer  "credits"
    t.string   "classinha"
    t.integer  "period"
    t.time     "horary"
    t.string   "local"
    t.string   "prerequisites"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "progresses", force: :cascade do |t|
    t.integer  "percent"
    t.string   "description"
    t.string   "name"
    t.string   "path"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "registration"
    t.string   "name"
    t.string   "last_name"
    t.integer  "current_semester"
    t.integer  "year_registration"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
