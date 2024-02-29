class AddCategoriaToProducto < ActiveRecord::Migration[7.0]
  def change
    add_reference :productos, :Categoria, null: false, foreign_key: true
  end
end
