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

ActiveRecord::Schema.define(:version => 20121111105334) do

  create_table "attachments", :force => true do |t|
    t.string   "file"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "result_id"
  end

  create_table "custom_parameters", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "parameter_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "experiments", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "experiments_samples", :force => true do |t|
    t.integer "experiment_id"
    t.integer "sample_id"
  end

  add_index "experiments_samples", ["experiment_id"], :name => "index_experiments_samples_on_experiment_id"
  add_index "experiments_samples", ["sample_id"], :name => "index_experiments_samples_on_sample_id"

  create_table "parameters", :force => true do |t|
    t.string   "name"
    t.string   "base"
    t.string   "holder"
    t.string   "time"
    t.integer  "bias"
    t.integer  "h2"
    t.integer  "ch4"
    t.integer  "b2h6h2"
    t.integer  "n2"
    t.integer  "tc"
    t.integer  "pmw"
    t.integer  "p"
    t.integer  "sample_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "results", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sample_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "samples", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "state"
    t.date     "date"
    t.integer  "user_id"
    t.string   "pic"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
