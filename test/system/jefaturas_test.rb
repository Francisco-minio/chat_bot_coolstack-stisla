require "application_system_test_case"

class JefaturasTest < ApplicationSystemTestCase
  setup do
    @jefatura = jefaturas(:one)
  end

  test "visiting the index" do
    visit jefaturas_url
    assert_selector "h1", text: "Jefaturas"
  end

  test "creating a Jefatura" do
    visit jefaturas_url
    click_on "New Jefatura"

    fill_in "Curso", with: @jefatura.curso_id
    fill_in "Profesor", with: @jefatura.profesor_id
    click_on "Create Jefatura"

    assert_text "Jefatura was successfully created"
    click_on "Back"
  end

  test "updating a Jefatura" do
    visit jefaturas_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @jefatura.curso_id
    fill_in "Profesor", with: @jefatura.profesor_id
    click_on "Update Jefatura"

    assert_text "Jefatura was successfully updated"
    click_on "Back"
  end

  test "destroying a Jefatura" do
    visit jefaturas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jefatura was successfully destroyed"
  end
end
