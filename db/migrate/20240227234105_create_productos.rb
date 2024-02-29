class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :nombre_producto
      t.string :descripcion_producto
      t.integer :stock
      t.float :precio_producto
      t.string :color
      t.string :talla
      t.integer :tipo_producto

      t.timestamps
    end
  end
end
