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

ActiveRecord::Schema.define(version: 2020_08_19_094502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.text "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items_orders", force: :cascade do |t|
    t.bigint "item_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_items_orders_on_item_id"
    t.index ["order_id"], name: "index_items_orders_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.boolean "completed"
    t.bigint "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["table_id"], name: "index_orders_on_table_id"
  end

  create_table "orders_sales", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orders_sales_on_order_id"
    t.index ["sale_id"], name: "index_orders_sales_on_sale_id"
  end

  create_table "reports", force: :cascade do |t|
    t.bigint "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sale_id"], name: "index_reports_on_sale_id"
  end

  create_table "reports_sales", force: :cascade do |t|
    t.bigint "report_id"
    t.bigint "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_reports_sales_on_report_id"
    t.index ["sale_id"], name: "index_reports_sales_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.bigint "table_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["table_id"], name: "index_sales_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.boolean "active_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end