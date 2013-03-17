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

ActiveRecord::Schema.define(:version => 20130315064925) do

  create_table "answers", :force => true do |t|
    t.string   "title"
    t.text     "explanation"
    t.string   "ex"
    t.string   "ex2"
    t.integer  "puzzle_id"
    t.string   "i"
    t.string   "i2"
    t.string   "video"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "reward_id"
  end

  create_table "games", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "levels", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "extra"
    t.string   "fun_url"
    t.string   "science_url"
    t.string   "image_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.boolean  "unlocked"
    t.integer  "num"
  end

  create_table "puzzles", :force => true do |t|
    t.string   "title"
    t.text     "question"
    t.string   "ex"
    t.string   "ex2"
    t.integer  "level_id"
    t.string   "i"
    t.string   "i2"
    t.string   "video"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "answer"
    t.integer  "reward_id"
  end

  create_table "rewards", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "unlocked"
    t.string   "file_url"
    t.integer  "level_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "clevel"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
