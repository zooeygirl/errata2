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

ActiveRecord::Schema.define(version: 20170506192337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "duedate"
    t.integer  "wordcountmin"
    t.integer  "wordcountmax"
    t.integer  "user_id"
    t.integer  "classroom_id"
    t.integer  "evaluation"
    t.float    "classroom_average"
  end

  create_table "classrooms", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "teacher"
    t.string   "school"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "student_list"
    t.string   "day"
    t.time     "start_time"
  end

  create_table "classrooms_practice_exercises", id: false, force: :cascade do |t|
    t.integer "classroom_id",         null: false
    t.integer "practice_exercise_id", null: false
  end

  create_table "classrooms_students", id: false, force: :cascade do |t|
    t.integer "classroom_id", null: false
    t.integer "student_id",   null: false
  end

  create_table "criteria", force: :cascade do |t|
    t.integer  "evaluation_id"
    t.integer  "level"
    t.string   "name"
    t.float    "percentage"
    t.float    "outof"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "essays", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "essay_status"
    t.text     "second_draft"
    t.integer  "assignment_id"
    t.float    "studentgrade"
    t.integer  "draftnum"
    t.integer  "trackernum"
    t.integer  "teacher"
  end

  create_table "evaluations", force: :cascade do |t|
    t.integer  "assignment_id"
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "hundred"
  end

  create_table "grade_elements", force: :cascade do |t|
    t.string   "name"
    t.integer  "grade_id"
    t.float    "percentage"
    t.float    "outof"
    t.float    "teachereval"
    t.string   "level"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "essay_id"
    t.integer  "paragraph_id"
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "essay_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.integer  "mistake_id"
    t.integer  "media"
    t.string   "url"
    t.float    "rating"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.string   "language"
  end

  create_table "mistakes", force: :cascade do |t|
    t.integer  "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "mistakes_practice_exercises", id: false, force: :cascade do |t|
    t.integer "practice_exercise_id", null: false
    t.integer "mistake_id",           null: false
  end

  create_table "mistakes_sentences", id: false, force: :cascade do |t|
    t.integer "mistake_id",  null: false
    t.integer "sentence_id", null: false
  end

  create_table "paragraphs", force: :cascade do |t|
    t.float   "evaluation"
    t.string  "content"
    t.string  "comment"
    t.integer "essay_id"
  end

  create_table "paragraphs_teacher_comments", id: false, force: :cascade do |t|
    t.integer "paragraph_id",       null: false
    t.integer "teacher_comment_id", null: false
  end

  create_table "pe_answers", force: :cascade do |t|
    t.integer  "pe_question_id"
    t.text     "answer"
    t.integer  "correct"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.integer  "practice_exercise_id"
  end

  create_table "pe_questions", force: :cascade do |t|
    t.integer  "sentence"
    t.integer  "practice_exercise_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "practice_exercises", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "assignment"
    t.string   "mistake_category"
  end

  create_table "sentences", force: :cascade do |t|
    t.integer  "essay_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "content"
    t.text     "comment"
    t.string   "vocabulary_errors"
    t.string   "word_list"
    t.integer  "paragraph_id"
    t.integer  "trackernum"
    t.integer  "user_id"
  end

  create_table "sentences_teacher_comments", id: false, force: :cascade do |t|
    t.integer "sentence_id",        null: false
    t.integer "teacher_comment_id", null: false
  end

  create_table "t_answers", force: :cascade do |t|
    t.string   "answer"
    t.integer  "user_id"
    t.integer  "training_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "teacher_comments", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "category"
  end

  create_table "training_sets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "essay_id"
    t.integer  "correct"
    t.integer  "incorrect"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "training_sets_trainings", id: false, force: :cascade do |t|
    t.integer "training_set_id", null: false
    t.integer "training_id",     null: false
  end

  create_table "trainings", force: :cascade do |t|
    t.string   "question"
    t.string   "answer"
    t.text     "explanation"
    t.integer  "mistake_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "role"
    t.integer  "teacher"
    t.integer  "classroom"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "words_in_mistakes", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "mistake_words"
    t.integer  "sentence_id"
    t.integer  "mistake_id"
    t.integer  "essay_id"
    t.integer  "paragraph_id"
    t.integer  "correction_status"
    t.string   "word_list"
  end

end
