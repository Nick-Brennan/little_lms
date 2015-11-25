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

ActiveRecord::Schema.define(version: 20151125015906) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homeworks", force: :cascade do |t|
    t.string   "hw_submission"
    t.string   "skill"
    t.string   "student_self_assessment"
    t.integer  "student_id"
    t.integer  "students_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "name"
  end

  add_index "homeworks", ["students_id"], name: "index_homeworks_on_students_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "project_submission"
    t.string   "link"
    t.string   "teacher_assessment"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "github_username"
    t.integer  "cohort_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "students", ["cohort_id"], name: "index_students_on_cohort_id", using: :btree

  create_table "students_projects", id: false, force: :cascade do |t|
    t.integer "student_id"
    t.integer "project_id"
  end

  add_index "students_projects", ["project_id"], name: "index_students_projects_on_project_id", using: :btree
  add_index "students_projects", ["student_id"], name: "index_students_projects_on_student_id", using: :btree

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.integer  "cohort_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "cohort_name"
  end

  add_index "teachers", ["cohort_id"], name: "index_teachers_on_cohort_id", using: :btree

end
