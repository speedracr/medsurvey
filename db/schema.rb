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

ActiveRecord::Schema.define(version: 20150914211803) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "hospital_id"
    t.integer  "capacity"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "departments", ["hospital_id"], name: "index_departments_on_hospital_id"

  create_table "hospitals", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hospitals", ["city_id"], name: "index_hospitals_on_city_id"

  create_table "survey_choices", force: :cascade do |t|
    t.integer  "survey_question_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "survey_choices", ["survey_question_id"], name: "index_survey_choices_on_survey_question_id"

  create_table "survey_questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "survey_questions", ["survey_id"], name: "index_survey_questions_on_survey_id"

  create_table "survey_votes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "survey_choice"
    t.string   "references"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "survey_votes", ["user_id"], name: "index_survey_votes_on_user_id"

  create_table "surveys", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
