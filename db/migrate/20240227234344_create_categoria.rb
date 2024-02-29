class CreateCategoria < ActiveRecord::Migration[7.0]
  def change
    create_table :categoria do |t|
      t.string :nombre_categoria
      t.string :descripcion_categoria

      t.timestamps
    end
  end
end
