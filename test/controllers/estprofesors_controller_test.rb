require "test_helper"

class EstprofesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estprofesor = estprofesors(:one)
  end

  test "should get index" do
    get estprofesors_url
    assert_response :success
  end

  test "should get new" do
    get new_estprofesor_url
    assert_response :success
  end

  test "should create estprofesor" do
    assert_difference('Estprofesor.count') do
      post estprofesors_url, params: { estprofesor: { establecimiento_id: @estprofesor.establecimiento_id, profesor_id: @estprofesor.profesor_id } }
    end

    assert_redirected_to estprofesor_url(Estprofesor.last)
  end

  test "should show estprofesor" do
    get estprofesor_url(@estprofesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_estprofesor_url(@estprofesor)
    assert_response :success
  end

  test "should update estprofesor" do
    patch estprofesor_url(@estprofesor), params: { estprofesor: { establecimiento_id: @estprofesor.establecimiento_id, profesor_id: @estprofesor.profesor_id } }
    assert_redirected_to estprofesor_url(@estprofesor)
  end

  test "should destroy estprofesor" do
    assert_difference('Estprofesor.count', -1) do
      delete estprofesor_url(@estprofesor)
    end

    assert_redirected_to estprofesors_url
  end
end
