require "test_helper"

class AsigprofesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asigprofesor = asigprofesors(:one)
  end

  test "should get index" do
    get asigprofesors_url
    assert_response :success
  end

  test "should get new" do
    get new_asigprofesor_url
    assert_response :success
  end

  test "should create asigprofesor" do
    assert_difference('Asigprofesor.count') do
      post asigprofesors_url, params: { asigprofesor: { asignatura_id: @asigprofesor.asignatura_id, profesor_id: @asigprofesor.profesor_id } }
    end

    assert_redirected_to asigprofesor_url(Asigprofesor.last)
  end

  test "should show asigprofesor" do
    get asigprofesor_url(@asigprofesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_asigprofesor_url(@asigprofesor)
    assert_response :success
  end

  test "should update asigprofesor" do
    patch asigprofesor_url(@asigprofesor), params: { asigprofesor: { asignatura_id: @asigprofesor.asignatura_id, profesor_id: @asigprofesor.profesor_id } }
    assert_redirected_to asigprofesor_url(@asigprofesor)
  end

  test "should destroy asigprofesor" do
    assert_difference('Asigprofesor.count', -1) do
      delete asigprofesor_url(@asigprofesor)
    end

    assert_redirected_to asigprofesors_url
  end
end
