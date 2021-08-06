require "application_system_test_case"

class EstprofesorsTest < ApplicationSystemTestCase
  setup do
    @estprofesor = estprofesors(:one)
  end

  test "visiting the index" do
    visit estprofesors_url
    assert_selector "h1", text: "Estprofesors"
  end

  test "creating a Estprofesor" do
    visit estprofesors_url
    click_on "New Estprofesor"

    fill_in "Establecimiento", with: @estprofesor.establecimiento_id
    fill_in "Profesor", with: @estprofesor.profesor_id
    click_on "Create Estprofesor"

    assert_text "Estprofesor was successfully created"
    click_on "Back"
  end

  test "updating a Estprofesor" do
    visit estprofesors_url
    click_on "Edit", match: :first

    fill_in "Establecimiento", with: @estprofesor.establecimiento_id
    fill_in "Profesor", with: @estprofesor.profesor_id
    click_on "Update Estprofesor"

    assert_text "Estprofesor was successfully updated"
    click_on "Back"
  end

  test "destroying a Estprofesor" do
    visit estprofesors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estprofesor was successfully destroyed"
  end
end
