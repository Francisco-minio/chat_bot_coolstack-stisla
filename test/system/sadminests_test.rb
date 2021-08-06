require "application_system_test_case"

class SadminestsTest < ApplicationSystemTestCase
  setup do
    @sadminest = sadminests(:one)
  end

  test "visiting the index" do
    visit sadminests_url
    assert_selector "h1", text: "Sadminests"
  end

  test "creating a Sadminest" do
    visit sadminests_url
    click_on "New Sadminest"

    fill_in "Establecimiento", with: @sadminest.establecimiento_id
    fill_in "Superadmin", with: @sadminest.superadmin_id
    click_on "Create Sadminest"

    assert_text "Sadminest was successfully created"
    click_on "Back"
  end

  test "updating a Sadminest" do
    visit sadminests_url
    click_on "Edit", match: :first

    fill_in "Establecimiento", with: @sadminest.establecimiento_id
    fill_in "Superadmin", with: @sadminest.superadmin_id
    click_on "Update Sadminest"

    assert_text "Sadminest was successfully updated"
    click_on "Back"
  end

  test "destroying a Sadminest" do
    visit sadminests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sadminest was successfully destroyed"
  end
end
