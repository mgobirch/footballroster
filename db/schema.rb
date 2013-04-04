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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130404000135) do

  create_table "eligible_years", :force => true do |t|
    t.integer  "year"
    t.string   "status"
    t.string   "status_explanation"
    t.string   "transfer_school"
    t.integer  "roster_id"
    t.integer  "player_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "player_positions", :force => true do |t|
    t.string   "position"
    t.integer  "player_id"
    t.date     "started_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "player_positions", ["player_id"], :name => "index_player_positions_on_player_id"

  create_table "players", :force => true do |t|
    t.integer  "number"
    t.string   "position"
    t.string   "height"
    t.string   "weight"
    t.string   "year_of_eligibility"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "name"
  end

  create_table "rosters", :force => true do |t|
    t.string   "school"
    t.integer  "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
