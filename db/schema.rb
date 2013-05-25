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

ActiveRecord::Schema.define(:version => 20130525194246) do

  create_table "categories", :force => true do |t|
    t.string "name"
  end

  create_table "manufacturers", :force => true do |t|
    t.string  "name"
    t.boolean "rebate"
    t.string  "rebate_description"
  end

  create_table "messages", :force => true do |t|
    t.text    "message"
    t.integer "user_id"
    t.integer "product_id"
  end

  create_table "models", :force => true do |t|
    t.string  "name"
    t.integer "manufacturer_id"
  end

  create_table "products", :force => true do |t|
    t.integer "model_id"
    t.string  "photo_url"
    t.text    "description"
    t.integer "category_id"
  end

  create_table "registers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "photo_url"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "results", :force => true do |t|
    t.integer  "user_id"
    t.string   "location"
    t.integer  "model_id"
    t.integer  "manufacturer_id"
    t.integer  "search_id"
    t.integer  "category_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "searches", :force => true do |t|
    t.integer  "category_id"
    t.string   "location"
    t.integer  "model_id"
    t.integer  "manufacturer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "tryals", :force => true do |t|
    t.string   "status"
    t.integer  "user_id"
    t.integer  "lender_id"
    t.integer  "product_id"
    t.datetime "start_at"
    t.datetime "due_at"
  end

  create_table "users", :force => true do |t|
    t.string "email"
    t.string "password_digest"
    t.string "photo_url"
    t.float  "latitude"
    t.float  "longitude"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
  end

end
