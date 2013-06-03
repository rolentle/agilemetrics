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

ActiveRecord::Schema.define(:version => 20120207180018) do

  create_table "sprints", :force => true do |t|
    t.string   "sprint_name"
    t.date     "end_date"
    t.float    "team_size"
    t.float    "working_days"
    t.float    "pto_days"
    t.float    "planned_velocity"
    t.float    "actual_velocity"
    t.float    "adopted_points"
    t.float    "unplanned_points"
    t.float    "found_points"
    t.float    "partial_points"
    t.integer  "team_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.text     "note"
    t.float    "code_coverage",      :default => 0.0
    t.integer  "nr_manual_tests",    :default => 0
    t.integer  "nr_automated_tests", :default => 0
  end

  add_index "sprints", ["team_id"], :name => "index_sprints_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.integer  "sprint_weeks"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.string   "owners"
    t.boolean  "is_archived",        :default => false
    t.integer  "test_certification", :default => 0
  end

  add_index "teams", ["name"], :name => "index_teams_on_name", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                              :default => "", :null => false
    t.string   "encrypted_password",  :limit => 128, :default => "", :null => false
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "login",                              :default => "", :null => false
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
