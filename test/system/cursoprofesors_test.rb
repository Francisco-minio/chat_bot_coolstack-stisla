require "application_system_test_case"

class CursoprofesorsTest < ApplicationSystemTestCase
  setup do
    @cursoprofesor = cursoprofesors(:one)
  end

  test "visiting the index" do
    visit cursoprofesors_url
    assert_selector "h1", text: "Cursoprofesors"
  end

  test "creating a Cursoprofesor" do
    visit cursoprofesors_url
    click_on "New Cursoprofesor"

    fill_in "Curso", with: @cursoprofesor.curso_id
    fill_in "Profesor", with: @cursoprofesor.profesor_id
    click_on "Create Cursoprofesor"

    assert_text "Cursoprofesor was successfully created"
    click_on "Back"
  end

  test "updating a Cursoprofesor" do
    visit cursoprofesors_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @cursoprofesor.curso_id
    fill_in "Profesor", with: @cursoprofesor.profesor_id
    click_on "Update Cursoprofesor"

    assert_text "Cursoprofesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Cursoprofesor" do
    visit cursoprofesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cursoprofesor was successfully destroyed"
  end
end
