require "test_helper"

class CursoprofesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cursoprofesor = cursoprofesors(:one)
  end

  test "should get index" do
    get cursoprofesors_url
    assert_response :success
  end

  test "should get new" do
    get new_cursoprofesor_url
    assert_response :success
  end

  test "should create cursoprofesor" do
    assert_difference('Cursoprofesor.count') do
      post cursoprofesors_url, params: { cursoprofesor: { curso_id: @cursoprofesor.curso_id, profesor_id: @cursoprofesor.profesor_id } }
    end

    assert_redirected_to cursoprofesor_url(Cursoprofesor.last)
  end

  test "should show cursoprofesor" do
    get cursoprofesor_url(@cursoprofesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_cursoprofesor_url(@cursoprofesor)
    assert_response :success
  end

  test "should update cursoprofesor" do
    patch cursoprofesor_url(@cursoprofesor), params: { cursoprofesor: { curso_id: @cursoprofesor.curso_id, profesor_id: @cursoprofesor.profesor_id } }
    assert_redirected_to cursoprofesor_url(@cursoprofesor)
  end

  test "should destroy cursoprofesor" do
    assert_difference('Cursoprofesor.count', -1) do
      delete cursoprofesor_url(@cursoprofesor)
    end

    assert_redirected_to cursoprofesors_url
  end
end
