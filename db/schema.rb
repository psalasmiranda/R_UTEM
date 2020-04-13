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

ActiveRecord::Schema.define(version: 20181226151943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avisos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "fecha"
    t.string "user"
    t.string "estado"
    t.string "adm"
    t.string "fonouser"
    t.string "usersede"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_avisos_on_user_id"
  end

  create_table "encuestadonados", force: :cascade do |t|
    t.string "nombredon"
    t.string "nombresol"
    t.string "categoria"
    t.integer "iddon"
    t.string "emaildon"
    t.string "sededon"
    t.string "carreradon"
    t.string "sexo"
    t.integer "notasol"
    t.string "publicacion"
    t.string "nompro"
    t.string "res"
    t.integer "notapro"
    t.string "estadopro"
    t.string "real"
    t.datetime "horapedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "encuestasolicitantes", force: :cascade do |t|
    t.string "nombresol"
    t.string "nombredon"
    t.string "categoria"
    t.integer "idsol"
    t.string "emailsol"
    t.string "sedesol"
    t.string "carrerasol"
    t.string "sexo"
    t.integer "notadon"
    t.string "publicacion"
    t.string "nompro"
    t.string "res"
    t.integer "notapro"
    t.string "estadopro"
    t.string "real"
    t.datetime "horapedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluacionavisos", force: :cascade do |t|
    t.string "a"
    t.string "b"
    t.string "c"
    t.string "d"
    t.string "e"
    t.string "f"
    t.string "g"
    t.string "h"
    t.string "i"
    t.string "j"
    t.integer "k"
    t.datetime "m"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.string "titulo"
    t.string "descripcion"
    t.string "defecto"
    t.string "categoria"
    t.string "estado"
    t.string "email"
    t.string "penalizar"
    t.datetime "horacreacion"
    t.datetime "horaaprobacion"
    t.datetime "horasolicitud"
    t.string "emailadm"
    t.integer "idsolicitante"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "imagen_file_name"
    t.string "imagen_content_type"
    t.integer "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.index ["user_id"], name: "index_productos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.string "paterno"
    t.string "materno"
    t.string "red_fija"
    t.string "red_movil"
    t.string "sexo"
    t.string "imagen_file_name"
    t.string "imagen_content_type"
    t.integer "imagen_file_size"
    t.datetime "imagen_updated_at"
    t.string "personal"
    t.string "carrera"
    t.string "sede"
    t.string "rol"
    t.string "bloqueo"
    t.integer "penalizar"
    t.integer "aux"
    t.integer "tope"
    t.integer "cantidad"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "avisos", "users"
  add_foreign_key "productos", "users"
end
