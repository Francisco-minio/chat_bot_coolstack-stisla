require "application_system_test_case"

class CursoProfesorsTest < ApplicationSystemTestCase
  setup do
    @curso_profesor = curso_profesors(:one)
  end

  test "visiting the index" do
    visit curso_profesors_url
    assert_selector "h1", text: "Curso Profesors"
  end

  test "creating a Curso profesor" do
    visit curso_profesors_url
    click_on "New Curso Profesor"

    fill_in "Curso", with: @curso_profesor.curso_id
    fill_in "Profesor", with: @curso_profesor.profesor_id
    click_on "Create Curso profesor"

    assert_text "Curso profesor was successfully created"
    click_on "Back"
  end

  test "updating a Curso profesor" do
    visit curso_profesors_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @curso_profesor.curso_id
    fill_in "Profesor", with: @curso_profesor.profesor_id
    click_on "Update Curso profesor"

    assert_text "Curso profesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Curso profesor" do
    visit curso_profesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curso profesor was successfully destroyed"
  end
end
