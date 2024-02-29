class CreateComprobantes < ActiveRecord::Migration[7.0]
  def change
    create_table :comprobantes do |t|
      t.string :tipo_comprobante
      t.float :precio_total_venta
      t.string :metodo_pago
      t.string :estado

      t.timestamps
    end
  end
end
