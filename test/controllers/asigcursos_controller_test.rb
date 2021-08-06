require "test_helper"

class AsigcursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asigcurso = asigcursos(:one)
  end

  test "should get index" do
    get asigcursos_url
    assert_response :success
  end

  test "should get new" do
    get new_asigcurso_url
    assert_response :success
  end

  test "should create asigcurso" do
    assert_difference('Asigcurso.count') do
      post asigcursos_url, params: { asigcurso: { asignatura_id: @asigcurso.asignatura_id, curso_id: @asigcurso.curso_id } }
    end

    assert_redirected_to asigcurso_url(Asigcurso.last)
  end

  test "should show asigcurso" do
    get asigcurso_url(@asigcurso)
    assert_response :success
  end

  test "should get edit" do
    get edit_asigcurso_url(@asigcurso)
    assert_response :success
  end

  test "should update asigcurso" do
    patch asigcurso_url(@asigcurso), params: { asigcurso: { asignatura_id: @asigcurso.asignatura_id, curso_id: @asigcurso.curso_id } }
    assert_redirected_to asigcurso_url(@asigcurso)
  end

  test "should destroy asigcurso" do
    assert_difference('Asigcurso.count', -1) do
      delete asigcurso_url(@asigcurso)
    end

    assert_redirected_to asigcursos_url
  end
end
