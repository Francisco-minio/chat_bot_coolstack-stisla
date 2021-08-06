require "application_system_test_case"

class SuperadmininsTest < ApplicationSystemTestCase
  setup do
    @superadminin = superadminins(:one)
  end

  test "visiting the index" do
    visit superadminins_url
    assert_selector "h1", text: "Superadminins"
  end

  test "creating a Superadminin" do
    visit superadminins_url
    click_on "New Superadminin"

    fill_in "Apellido", with: @superadminin.apellido
    fill_in "Email", with: @superadminin.email
    fill_in "Nombre", with: @superadminin.nombre
    fill_in "Password", with: @superadminin.password
    fill_in "Rol", with: @superadminin.rol
    click_on "Create Superadminin"

    assert_text "Superadminin was successfully created"
    click_on "Back"
  end

  test "updating a Superadminin" do
    visit superadminins_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @superadminin.apellido
    fill_in "Email", with: @superadminin.email
    fill_in "Nombre", with: @superadminin.nombre
    fill_in "Password", with: @superadminin.password
    fill_in "Rol", with: @superadminin.rol
    click_on "Update Superadminin"

    assert_text "Superadminin was successfully updated"
    click_on "Back"
  end

  test "destroying a Superadminin" do
    visit superadminins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Superadminin was successfully destroyed"
  end
end
