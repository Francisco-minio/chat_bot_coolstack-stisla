require "application_system_test_case"

class AsigprofesorsTest < ApplicationSystemTestCase
  setup do
    @asigprofesor = asigprofesors(:one)
  end

  test "visiting the index" do
    visit asigprofesors_url
    assert_selector "h1", text: "Asigprofesors"
  end

  test "creating a Asigprofesor" do
    visit asigprofesors_url
    click_on "New Asigprofesor"

    fill_in "Asignatura", with: @asigprofesor.asignatura_id
    fill_in "Profesor", with: @asigprofesor.profesor_id
    click_on "Create Asigprofesor"

    assert_text "Asigprofesor was successfully created"
    click_on "Back"
  end

  test "updating a Asigprofesor" do
    visit asigprofesors_url
    click_on "Edit", match: :first

    fill_in "Asignatura", with: @asigprofesor.asignatura_id
    fill_in "Profesor", with: @asigprofesor.profesor_id
    click_on "Update Asigprofesor"

    assert_text "Asigprofesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Asigprofesor" do
    visit asigprofesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asigprofesor was successfully destroyed"
  end
end
