require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "should create cliente" do
    visit clientes_url
    click_on "New cliente"

    fill_in "Dni", with: @cliente.DNI
    fill_in "Apellido materno", with: @cliente.apellido_materno
    fill_in "Apellido paterno", with: @cliente.apellido_paterno
    fill_in "Direccion", with: @cliente.direccion
    fill_in "Edad", with: @cliente.edad
    fill_in "Email", with: @cliente.email
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Password", with: @cliente.password
    fill_in "Sexo", with: @cliente.sexo
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "should update Cliente" do
    visit cliente_url(@cliente)
    click_on "Edit this cliente", match: :first

    fill_in "Dni", with: @cliente.DNI
    fill_in "Apellido materno", with: @cliente.apellido_materno
    fill_in "Apellido paterno", with: @cliente.apellido_paterno
    fill_in "Direccion", with: @cliente.direccion
    fill_in "Edad", with: @cliente.edad
    fill_in "Email", with: @cliente.email
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Password", with: @cliente.password
    fill_in "Sexo", with: @cliente.sexo
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "should destroy Cliente" do
    visit cliente_url(@cliente)
    click_on "Destroy this cliente", match: :first

    assert_text "Cliente was successfully destroyed"
  end
end
