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

ActiveRecord::Schema.define(:version => 20130319201314) do

  create_table "dyskusjas", :force => true do |t|
    t.integer  "idDyskusja"
    t.string   "user_email"
    t.integer  "projektID"
    t.string   "temat"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "komentarzs", :force => true do |t|
    t.integer  "idKomentarz"
    t.integer  "plikID"
    t.string   "user_email"
    t.string   "tresc"
    t.datetime "dataGodzina"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pliks", :force => true do |t|
    t.integer  "idPlik"
    t.string   "user_email"
    t.integer  "projektID"
    t.datetime "dataGodzina"
    t.boolean  "publiczny"
    t.boolean  "tylkoOdczyt"
    t.string   "sciezka"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "idPost"
    t.integer  "dyskusjaID"
    t.string   "autor"
    t.text     "tresc"
    t.datetime "dataGodzina"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projekts", :force => true do |t|
    t.integer  "idProjekt"
    t.string   "nazwa"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "udostepnianies", :force => true do |t|
    t.string   "user_email"
    t.integer  "plikID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "uzytkowniks", :force => true do |t|
    t.string   "nazwisko"
    t.string   "imie"
    t.date     "dataUr"
    t.string   "haslo"
    t.boolean  "administrator"
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
  end

  add_index "uzytkowniks", ["email"], :name => "index_uzytkowniks_on_email", :unique => true
  add_index "uzytkowniks", ["reset_password_token"], :name => "index_uzytkowniks_on_reset_password_token", :unique => true

  create_table "wersjas", :force => true do |t|
    t.integer  "plikID"
    t.datetime "dataGodzina"
    t.string   "autor"
    t.string   "sciezka"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "wiadomoscs", :force => true do |t|
    t.integer  "idWiadomosc"
    t.string   "odbiorca"
    t.string   "nadawca"
    t.text     "tresc"
    t.datetime "dataGodzina"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "wydarzenies", :force => true do |t|
    t.integer  "idWydarzenie"
    t.string   "user_email"
    t.integer  "projektID"
    t.string   "nazwa"
    t.datetime "dataGodzina"
    t.string   "info"
    t.boolean  "publiczny"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
