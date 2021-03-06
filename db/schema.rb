# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100506030103) do

  create_table "comments", :force => true do |t|
    t.integer  "recipe_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user"
  end

  create_table "create_ingredients", :force => true do |t|
    t.string   "amount"
    t.string   "unit"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drink_comments", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "drink_id"
    t.string   "user"
  end

  create_table "drink_ingredients", :force => true do |t|
    t.string   "amount"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "recipe_id"
  end

  create_table "drinks", :force => true do |t|
    t.text     "name"
    t.text     "username"
    t.text     "ingredients"
    t.text     "instructions"
    t.text     "description"
    t.text     "pairs"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "prep_time"
  end

  create_table "ingredients", :force => true do |t|
    t.string   "amount"
    t.string   "unit"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", :force => true do |t|
    t.string   "Name"
    t.text     "Instructions"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cooking_time"
    t.string   "username"
    t.text     "ingredients"
    t.text     "description"
  end

end
