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

ActiveRecord::Schema.define(version: 20150521012918) do

  create_table "materials", force: :cascade do |t|
    t.string   "number"
    t.string   "description"
    t.string   "plant_status"
    t.string   "type"
    t.string   "procurement_type"
    t.date     "eis_start_date"
    t.date     "setup_costing_date"
    t.date     "setup_purchasing_date"
    t.date     "engineering_release_date"
    t.date     "finalized_purchasing_date"
    t.date     "clp_prl_date"
    t.date     "clp_sdl_date"
    t.date     "work_scheduling"
    t.date     "plant_costing_date"
    t.date     "quality_management_date"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
