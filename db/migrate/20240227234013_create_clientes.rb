class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :DNI
      t.string :email
      t.string :password
      t.integer :edad
      t.string :sexo
      t.string :direccion

      t.timestamps
    end
  end
end
