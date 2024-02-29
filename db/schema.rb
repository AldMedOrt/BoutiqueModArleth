# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_29_211941) do
  create_table "categoria", force: :cascade do |t|
    t.string "nombre_categoria"
    t.string "descripcion_categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.string "DNI"
    t.string "email"
    t.string "password"
    t.integer "edad"
    t.string "sexo"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comprobantes", force: :cascade do |t|
    t.string "tipo_comprobante"
    t.float "precio_total_venta"
    t.string "metodo_pago"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Cliente_id", null: false
    t.index ["Cliente_id"], name: "index_comprobantes_on_Cliente_id"
  end

  create_table "detalle_venta", force: :cascade do |t|
    t.float "precio_total"
    t.integer "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre_producto"
    t.string "descripcion_producto"
    t.integer "stock"
    t.float "precio_producto"
    t.string "color"
    t.string "talla"
    t.integer "tipo_producto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Categoria_id", null: false
    t.index ["Categoria_id"], name: "index_productos_on_Categoria_id"
  end

  add_foreign_key "comprobantes", "Clientes"
  add_foreign_key "productos", "Categoria", column: "Categoria_id"
end
