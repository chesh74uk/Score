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

ActiveRecord::Schema.define(version: 2018_05_30_134542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "home_riders", force: :cascade do |t|
    t.bigint "meeting_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_home_riders_on_meeting_id"
  end

  create_table "meetings", force: :cascade do |t|
    t.date "meeting_date"
    t.string "home_team"
    t.string "away_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "home_score"
    t.integer "away_score"
  end

  create_table "races", force: :cascade do |t|
    t.decimal "heat_time", precision: 4, scale: 2, null: false
    t.integer "blue_score"
    t.integer "red_score"
    t.integer "white_score"
    t.integer "yellow_score"
    t.integer "heat_number"
    t.bigint "meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_races_on_meeting_id"
  end

  add_foreign_key "home_riders", "meetings"
  add_foreign_key "races", "meetings"
end
