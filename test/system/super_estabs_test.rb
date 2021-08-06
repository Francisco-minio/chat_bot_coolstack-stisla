require "application_system_test_case"

class SuperEstabsTest < ApplicationSystemTestCase
  setup do
    @super_estab = super_estabs(:one)
  end

  test "visiting the index" do
    visit super_estabs_url
    assert_selector "h1", text: "Super Estabs"
  end

  test "creating a Super estab" do
    visit super_estabs_url
    click_on "New Super Estab"

    fill_in "Establecimiento", with: @super_estab.establecimiento_id
    fill_in "Superadminin", with: @super_estab.superadminin_id
    click_on "Create Super estab"

    assert_text "Super estab was successfully created"
    click_on "Back"
  end

  test "updating a Super estab" do
    visit super_estabs_url
    click_on "Edit", match: :first

    fill_in "Establecimiento", with: @super_estab.establecimiento_id
    fill_in "Superadminin", with: @super_estab.superadminin_id
    click_on "Update Super estab"

    assert_text "Super estab was successfully updated"
    click_on "Back"
  end

  test "destroying a Super estab" do
    visit super_estabs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Super estab was successfully destroyed"
  end
end
