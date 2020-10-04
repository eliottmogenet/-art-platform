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

ActiveRecord::Schema.define(version: 2020_10_04_134609) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.boolean "paid", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "guides", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_guides_on_email", unique: true
    t.index ["reset_password_token"], name: "index_guides_on_reset_password_token", unique: true
  end

  create_table "paintings", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.text "comment"
    t.integer "rate"
    t.datetime "date"
    t.bigint "tours_id", null: false
    t.bigint "guides_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guides_id"], name: "index_ratings_on_guides_id"
    t.index ["tours_id"], name: "index_ratings_on_tours_id"
  end

  create_table "tour_paintings", force: :cascade do |t|
    t.bigint "tours_id", null: false
    t.bigint "paintings_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["paintings_id"], name: "index_tour_paintings_on_paintings_id"
    t.index ["tours_id"], name: "index_tour_paintings_on_tours_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "duration"
    t.string "languages"
    t.integer "total_rate"
    t.bigint "guides_id", null: false
    t.boolean "free", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "date"
    t.index ["guides_id"], name: "index_tours_on_guides_id"
  end

  add_foreign_key "ratings", "guides", column: "guides_id"
  add_foreign_key "ratings", "tours", column: "tours_id"
  add_foreign_key "tour_paintings", "paintings", column: "paintings_id"
  add_foreign_key "tour_paintings", "tours", column: "tours_id"
  add_foreign_key "tours", "guides", column: "guides_id"
end
