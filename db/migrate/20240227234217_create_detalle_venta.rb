class CreateDetalleVenta < ActiveRecord::Migration[7.0]
  def change
    create_table :detalle_venta do |t|
      t.float :precio_total
      t.integer :cantidad

      t.timestamps
    end
  end
end
