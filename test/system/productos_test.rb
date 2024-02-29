require "application_system_test_case"

class ProductosTest < ApplicationSystemTestCase
  setup do
    @producto = productos(:one)
  end

  test "visiting the index" do
    visit productos_url
    assert_selector "h1", text: "Productos"
  end

  test "should create producto" do
    visit productos_url
    click_on "New producto"

    fill_in "Color", with: @producto.color
    fill_in "Descripcion producto", with: @producto.descripcion_producto
    fill_in "Nombre producto", with: @producto.nombre_producto
    fill_in "Precio producto", with: @producto.precio_producto
    fill_in "Stock", with: @producto.stock
    fill_in "Talla", with: @producto.talla
    fill_in "Tipo producto", with: @producto.tipo_producto
    click_on "Create Producto"

    assert_text "Producto was successfully created"
    click_on "Back"
  end

  test "should update Producto" do
    visit producto_url(@producto)
    click_on "Edit this producto", match: :first

    fill_in "Color", with: @producto.color
    fill_in "Descripcion producto", with: @producto.descripcion_producto
    fill_in "Nombre producto", with: @producto.nombre_producto
    fill_in "Precio producto", with: @producto.precio_producto
    fill_in "Stock", with: @producto.stock
    fill_in "Talla", with: @producto.talla
    fill_in "Tipo producto", with: @producto.tipo_producto
    click_on "Update Producto"

    assert_text "Producto was successfully updated"
    click_on "Back"
  end

  test "should destroy Producto" do
    visit producto_url(@producto)
    click_on "Destroy this producto", match: :first

    assert_text "Producto was successfully destroyed"
  end
end
