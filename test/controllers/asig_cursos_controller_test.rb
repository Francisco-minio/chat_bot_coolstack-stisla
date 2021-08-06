require "test_helper"

class AsigCursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asig_curso = asig_cursos(:one)
  end

  test "should get index" do
    get asig_cursos_url
    assert_response :success
  end

  test "should get new" do
    get new_asig_curso_url
    assert_response :success
  end

  test "should create asig_curso" do
    assert_difference('AsigCurso.count') do
      post asig_cursos_url, params: { asig_curso: { asignatura_id: @asig_curso.asignatura_id, curso_id: @asig_curso.curso_id } }
    end

    assert_redirected_to asig_curso_url(AsigCurso.last)
  end

  test "should show asig_curso" do
    get asig_curso_url(@asig_curso)
    assert_response :success
  end

  test "should get edit" do
    get edit_asig_curso_url(@asig_curso)
    assert_response :success
  end

  test "should update asig_curso" do
    patch asig_curso_url(@asig_curso), params: { asig_curso: { asignatura_id: @asig_curso.asignatura_id, curso_id: @asig_curso.curso_id } }
    assert_redirected_to asig_curso_url(@asig_curso)
  end

  test "should destroy asig_curso" do
    assert_difference('AsigCurso.count', -1) do
      delete asig_curso_url(@asig_curso)
    end

    assert_redirected_to asig_cursos_url
  end
end
