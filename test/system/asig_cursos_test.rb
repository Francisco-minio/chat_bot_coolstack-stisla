require "application_system_test_case"

class AsigCursosTest < ApplicationSystemTestCase
  setup do
    @asig_curso = asig_cursos(:one)
  end

  test "visiting the index" do
    visit asig_cursos_url
    assert_selector "h1", text: "Asig Cursos"
  end

  test "creating a Asig curso" do
    visit asig_cursos_url
    click_on "New Asig Curso"

    fill_in "Asignatura", with: @asig_curso.asignatura_id
    fill_in "Curso", with: @asig_curso.curso_id
    click_on "Create Asig curso"

    assert_text "Asig curso was successfully created"
    click_on "Back"
  end

  test "updating a Asig curso" do
    visit asig_cursos_url
    click_on "Edit", match: :first

    fill_in "Asignatura", with: @asig_curso.asignatura_id
    fill_in "Curso", with: @asig_curso.curso_id
    click_on "Update Asig curso"

    assert_text "Asig curso was successfully updated"
    click_on "Back"
  end

  test "destroying a Asig curso" do
    visit asig_cursos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asig curso was successfully destroyed"
  end
end
