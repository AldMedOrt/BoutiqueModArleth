require "application_system_test_case"

class DetalleVentaTest < ApplicationSystemTestCase
  setup do
    @detalle_ventum = detalle_venta(:one)
  end

  test "visiting the index" do
    visit detalle_venta_url
    assert_selector "h1", text: "Detalle venta"
  end

  test "should create detalle ventum" do
    visit detalle_venta_url
    click_on "New detalle ventum"

    fill_in "Cantidad", with: @detalle_ventum.cantidad
    fill_in "Precio total", with: @detalle_ventum.precio_total
    click_on "Create Detalle ventum"

    assert_text "Detalle ventum was successfully created"
    click_on "Back"
  end

  test "should update Detalle ventum" do
    visit detalle_ventum_url(@detalle_ventum)
    click_on "Edit this detalle ventum", match: :first

    fill_in "Cantidad", with: @detalle_ventum.cantidad
    fill_in "Precio total", with: @detalle_ventum.precio_total
    click_on "Update Detalle ventum"

    assert_text "Detalle ventum was successfully updated"
    click_on "Back"
  end

  test "should destroy Detalle ventum" do
    visit detalle_ventum_url(@detalle_ventum)
    click_on "Destroy this detalle ventum", match: :first

    assert_text "Detalle ventum was successfully destroyed"
  end
end
