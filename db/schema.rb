# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_11_11_084424) do
  create_table "articles", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galleries", charset: "utf8mb4", force: :cascade do |t|
    t.text "name"
    t.string "location"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "painters", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.date "birthDate"
    t.string "placeOfBirth"
    t.string "genre"
    t.string "style"
    t.string "picFileName"
    t.integer "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paintings", charset: "utf8mb4", force: :cascade do |t|
    t.string "nameOfPainting"
    t.text "yearOfPainting", size: :tiny
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "linkToImage"
    t.integer "painter_id"
    t.integer "gallery_id"
    t.string "art_form"
    t.string "plot"
    t.string "style"
    t.string "technic"
    t.string "materials"
    t.string "size"
    t.index ["gallery_id"], name: "index_paintings_on_gallery_id"
    t.index ["painter_id"], name: "index_paintings_on_painter_id"
  end

end
