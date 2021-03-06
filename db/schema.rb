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

ActiveRecord::Schema.define(:version => 20130125205409) do

  create_table "debates", :force => true do |t|
    t.text    "question"
    t.integer "duration"
    t.text    "side1"
    t.text    "side2"
    t.string  "debateName1"
    t.string  "debateName2"
    t.boolean "upvote1"
    t.boolean "upvote2"
    t.boolean "started"
    t.boolean "finished"
    t.text    "statement1"
    t.text    "statement2"
    t.text    "statement3"
    t.text    "statement4"
    t.text    "statement5"
    t.text    "statement6"
    t.boolean "extend1"
    t.boolean "extend2"
    t.integer "topic_id"
  end

  create_table "debates_users", :force => true do |t|
    t.integer "debate_id"
    t.integer "user_id"
  end

  create_table "friends", :force => true do |t|
    t.integer "friend_id"
    t.string  "friend_name"
    t.integer "user_id"
  end

  create_table "topics", :force => true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "users", :force => true do |t|
    t.string   "debateName"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "age"
    t.boolean  "gender"
    t.string   "location"
    t.string   "rank"
    t.string   "favoriteTopic"
    t.text     "about"
    t.boolean  "admin"
    t.integer  "avgDuration"
    t.integer  "numDebates"
    t.integer  "upvotes"
    t.string   "debateRank"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
