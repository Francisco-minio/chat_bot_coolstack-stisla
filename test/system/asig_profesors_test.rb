require "application_system_test_case"

class AsigProfesorsTest < ApplicationSystemTestCase
  setup do
    @asig_profesor = asig_profesors(:one)
  end

  test "visiting the index" do
    visit asig_profesors_url
    assert_selector "h1", text: "Asig Profesors"
  end

  test "creating a Asig profesor" do
    visit asig_profesors_url
    click_on "New Asig Profesor"

    fill_in "Asignatura", with: @asig_profesor.asignatura_id
    fill_in "Profesor", with: @asig_profesor.profesor_id
    click_on "Create Asig profesor"

    assert_text "Asig profesor was successfully created"
    click_on "Back"
  end

  test "updating a Asig profesor" do
    visit asig_profesors_url
    click_on "Edit", match: :first

    fill_in "Asignatura", with: @asig_profesor.asignatura_id
    fill_in "Profesor", with: @asig_profesor.profesor_id
    click_on "Update Asig profesor"

    assert_text "Asig profesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Asig profesor" do
    visit asig_profesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asig profesor was successfully destroyed"
  end
end
