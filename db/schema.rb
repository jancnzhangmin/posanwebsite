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

ActiveRecord::Schema.define(version: 20170912080336) do

  create_table "myclas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "cla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "myproducts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "mycla_id"
    t.string   "name"
    t.string   "spec"
    t.string   "content"
    t.float    "price",      limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "newspapers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",                     limit: 65535
    t.integer  "top"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "newspaperimage_file_name"
    t.string   "newspaperimage_content_type"
    t.integer  "newspaperimage_file_size"
    t.datetime "newspaperimage_updated_at"
  end

  create_table "notices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",    limit: 65535
    t.integer  "top"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "ware"
    t.string   "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "mycla_id"
  end

end
