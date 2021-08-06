require "test_helper"

class CursoProfesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curso_profesor = curso_profesors(:one)
  end

  test "should get index" do
    get curso_profesors_url
    assert_response :success
  end

  test "should get new" do
    get new_curso_profesor_url
    assert_response :success
  end

  test "should create curso_profesor" do
    assert_difference('CursoProfesor.count') do
      post curso_profesors_url, params: { curso_profesor: { curso_id: @curso_profesor.curso_id, profesor_id: @curso_profesor.profesor_id } }
    end

    assert_redirected_to curso_profesor_url(CursoProfesor.last)
  end

  test "should show curso_profesor" do
    get curso_profesor_url(@curso_profesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_curso_profesor_url(@curso_profesor)
    assert_response :success
  end

  test "should update curso_profesor" do
    patch curso_profesor_url(@curso_profesor), params: { curso_profesor: { curso_id: @curso_profesor.curso_id, profesor_id: @curso_profesor.profesor_id } }
    assert_redirected_to curso_profesor_url(@curso_profesor)
  end

  test "should destroy curso_profesor" do
    assert_difference('CursoProfesor.count', -1) do
      delete curso_profesor_url(@curso_profesor)
    end

    assert_redirected_to curso_profesors_url
  end
end
