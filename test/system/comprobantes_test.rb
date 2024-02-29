require "application_system_test_case"

class ComprobantesTest < ApplicationSystemTestCase
  setup do
    @comprobante = comprobantes(:one)
  end

  test "visiting the index" do
    visit comprobantes_url
    assert_selector "h1", text: "Comprobantes"
  end

  test "should create comprobante" do
    visit comprobantes_url
    click_on "New comprobante"

    fill_in "Estado", with: @comprobante.estado
    fill_in "Metodo pago", with: @comprobante.metodo_pago
    fill_in "Precio total venta", with: @comprobante.precio_total_venta
    fill_in "Tipo comprobante", with: @comprobante.tipo_comprobante
    click_on "Create Comprobante"

    assert_text "Comprobante was successfully created"
    click_on "Back"
  end

  test "should update Comprobante" do
    visit comprobante_url(@comprobante)
    click_on "Edit this comprobante", match: :first

    fill_in "Estado", with: @comprobante.estado
    fill_in "Metodo pago", with: @comprobante.metodo_pago
    fill_in "Precio total venta", with: @comprobante.precio_total_venta
    fill_in "Tipo comprobante", with: @comprobante.tipo_comprobante
    click_on "Update Comprobante"

    assert_text "Comprobante was successfully updated"
    click_on "Back"
  end

  test "should destroy Comprobante" do
    visit comprobante_url(@comprobante)
    click_on "Destroy this comprobante", match: :first

    assert_text "Comprobante was successfully destroyed"
  end
end
