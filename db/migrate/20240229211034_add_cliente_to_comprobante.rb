class AddClienteToComprobante < ActiveRecord::Migration[7.0]
  def change
    add_reference :comprobantes, :Cliente, null: false, foreign_key: true
  end
end
