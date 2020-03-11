# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_11_115043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "article_name"
    t.string "article_type"
  end

  create_table "products", force: :cascade do |t|
    t.integer "product_id"
    t.string "product_name"
    t.float "cost"
  end

  create_table "student", id: false, force: :cascade do |t|
    t.integer "regno"
    t.string "name", limit: 20
    t.float "cgpa"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_name"
    t.string "student_branch"
  end

  create_table "todos", force: :cascade do |t|
    t.text "todo_text"
    t.date "due_date"
    t.boolean "completed"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
