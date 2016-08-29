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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160829161159) do

  create_table "clients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "genero"
    t.integer  "edad"
    t.string   "correo"
    t.string   "cel"
    t.string   "direccion"
    t.string   "barrio"
    t.string   "ciudad"
    t.date     "fecha_fin"
    t.boolean  "activo"
    t.date     "fecha_ultpago"
    t.date     "fecha_finpago"
    t.boolean  "contrato"
    t.integer  "subscription_id"
    t.integer  "payment_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "clients", ["payment_id"], name: "index_clients_on_payment_id"
  add_index "clients", ["subscription_id"], name: "index_clients_on_subscription_id"

  create_table "contracts", force: :cascade do |t|
    t.string   "name"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "nombre"
    t.decimal  "precio",      precision: 10, scale: 2
    t.string   "descripcion"
    t.decimal  "descuento",   precision: 10, scale: 2
    t.decimal  "impuesto",    precision: 10, scale: 2
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "name"
    t.integer  "tiempo_suscripcion"
    t.string   "descripcion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
