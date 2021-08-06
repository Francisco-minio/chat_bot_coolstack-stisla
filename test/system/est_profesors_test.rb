require "application_system_test_case"

class EstProfesorsTest < ApplicationSystemTestCase
  setup do
    @est_profesor = est_profesors(:one)
  end

  test "visiting the index" do
    visit est_profesors_url
    assert_selector "h1", text: "Est Profesors"
  end

  test "creating a Est profesor" do
    visit est_profesors_url
    click_on "New Est Profesor"

    fill_in "Establecimiento", with: @est_profesor.establecimiento_id
    fill_in "Profesor", with: @est_profesor.profesor_id
    click_on "Create Est profesor"

    assert_text "Est profesor was successfully created"
    click_on "Back"
  end

  test "updating a Est profesor" do
    visit est_profesors_url
    click_on "Edit", match: :first

    fill_in "Establecimiento", with: @est_profesor.establecimiento_id
    fill_in "Profesor", with: @est_profesor.profesor_id
    click_on "Update Est profesor"

    assert_text "Est profesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Est profesor" do
    visit est_profesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Est profesor was successfully destroyed"
  end
end
