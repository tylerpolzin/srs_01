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

ActiveRecord::Schema.define(version: 20161227020151) do

  create_table "callsheets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "store_id"
    t.date     "visit_date"
    t.string   "dept_manager_400"
    t.string   "ce_stairdisplays"
    t.string   "ce_binboxes"
    t.string   "ce_tvdisplay"
    t.string   "ce_closetdoors"
    t.string   "ce_barndoors"
    t.string   "ce_lit_tearpads"
    t.string   "ce_lit_closetdoors"
    t.string   "ce_lit_columns"
    t.text     "ce_notes"
    t.string   "genie_sku_4251691"
    t.string   "genie_sku_4251689"
    t.string   "genie_sku_4252547"
    t.string   "genie_sku_4252548"
    t.string   "genie_sku_4254040"
    t.string   "genie_sku_4251720"
    t.string   "genie_sku_4252388"
    t.string   "genie_sku_4252445"
    t.string   "genie_sku_4252391"
    t.string   "genie_sku_4251685"
    t.text     "genie_notes"
    t.string   "dept_manager_600"
    t.string   "hw_sku_3351566"
    t.string   "hw_sku_3351579"
    t.string   "hw_sku_6360310"
    t.string   "hw_sku_6360320"
    t.string   "hw_sku_6360325"
    t.string   "hw_sku_6360328"
    t.string   "hw_sku_3351813"
    t.string   "hw_sku_3351830"
    t.string   "hw_sku_3351832"
    t.string   "hw_sku_3351833"
    t.string   "hw_sku_6360205"
    t.string   "hw_sku_6360210"
    t.string   "hw_sku_6360220"
    t.string   "hw_sku_6360150"
    t.string   "hw_sku_6360200"
    t.string   "hw_sku_3351837"
    t.string   "hw_sku_3351779"
    t.string   "hw_sku_3351885"
    t.string   "hw_sku_3351785"
    t.string   "hw_sku_3351798"
    t.string   "hw_sku_3351879"
    t.string   "hw_sku_3351895"
    t.string   "hw_sku_3352001"
    t.string   "hw_sku_3352014"
    t.string   "hw_sku_3352027"
    t.string   "hw_sku_3352030"
    t.string   "hw_sku_6399948"
    t.string   "hw_sku_6399949"
    t.string   "hw_sku_6399978"
    t.string   "hw_sku_6399979"
    t.string   "hw_lit_thermostat"
    t.string   "hw_lit_airquality"
    t.text     "honeywell_notes"
    t.string   "summit_sku_6471315"
    t.string   "summit_sku_6471317"
    t.string   "summit_sku_6471323"
    t.string   "summit_sku_6471320"
    t.string   "summit_sku_6471321"
    t.string   "summit_sku_6471330"
    t.string   "summit_sku_6471333"
    t.string   "summit_sku_6471305"
    t.string   "summit_sku_6471322"
    t.string   "summit_sku_6471302"
    t.string   "summit_sku_6473100"
    t.string   "summit_sku_6471335"
    t.string   "summit_sku_6471325"
    t.string   "summit_sku_6473918"
    t.string   "summit_sku_6473917"
    t.string   "summit_sku_6473900"
    t.string   "summit_sku_6473136"
    t.text     "summit_notes"
    t.string   "allstone_lit"
    t.text     "allstone_notes"
    t.text     "tuscany_notes"
    t.boolean  "callsheet_complete"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "store_number"
    t.string   "store_abbrv"
    t.string   "store_name"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "company"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ecommorders", force: :cascade do |t|
    t.string   "ecomm_hub"
    t.string   "order_status"
    t.string   "merchant"
    t.string   "retailer"
    t.datetime "order_date"
    t.integer  "order_line_count"
    t.string   "item_sku"
    t.integer  "item_quantity"
    t.decimal  "item_cost"
    t.string   "shipto_name"
    t.string   "shipto_address1"
    t.string   "shipto_address2"
    t.string   "shipto_zipcode"
    t.string   "shipto_city"
    t.string   "shipto_state"
    t.string   "shipto_phone"
    t.string   "shipping_service"
    t.string   "po_number"
    t.integer  "order_weight"
    t.integer  "order_length"
    t.integer  "order_width"
    t.integer  "order_height"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "vendor_name"
    t.string   "model_number"
    t.string   "part_number"
    t.string   "upc"
    t.text     "description"
    t.string   "picture"
    t.string   "weight"
    t.string   "location"
    t.integer  "count_on_hand"
    t.boolean  "active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "new_callsheets", force: :cascade do |t|
    t.integer  "store_id"
    t.integer  "store_number"
    t.date     "callsheet_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "store_abbrv"
    t.string   "store_name"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "position"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone1"
    t.string   "phone1_type"
    t.string   "phone2"
    t.string   "phone2_type"
    t.string   "email"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "shipments", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.float    "length"
    t.float    "width"
    t.float    "height"
    t.float    "weight"
    t.boolean  "cylinder"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stockmovements", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "quantity"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "storeorders", force: :cascade do |t|
    t.integer  "store_id"
    t.integer  "item_id"
    t.boolean  "active"
    t.string   "status"
    t.string   "po_number"
    t.text     "email_reference"
    t.text     "notes"
    t.string   "initiated_by"
    t.string   "initiated_for"
    t.text     "activity"
    t.string   "shipping_carrier"
    t.string   "tracking_number"
    t.decimal  "shipping_cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "stores", force: :cascade do |t|
    t.integer  "yard"
    t.string   "abbrv"
    t.string   "name"
    t.string   "prototype"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "lat"
    t.string   "long"
    t.string   "phone"
    t.string   "service_rep"
    t.integer  "user_id"
    t.text     "notes"
    t.date     "lastvisit"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "task_name"
    t.string   "initiated_by"
    t.string   "initiated_for"
    t.string   "task_type"
    t.text     "email_reference"
    t.string   "status"
    t.boolean  "autocompleteable"
    t.datetime "deadline"
    t.datetime "reminding_at"
    t.datetime "finished_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

  create_table "warrantyorders", force: :cascade do |t|
    t.integer  "customer_id"
    t.boolean  "active"
    t.string   "status"
    t.string   "po_number"
    t.text     "product"
    t.text     "email_reference"
    t.string   "initiated_by"
    t.string   "initiated_for"
    t.text     "activity"
    t.text     "notes"
    t.string   "shipping_carrier"
    t.string   "tracking_number"
    t.decimal  "shipping_cost"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
