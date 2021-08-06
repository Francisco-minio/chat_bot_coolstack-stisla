require "test_helper"

class EstProfesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @est_profesor = est_profesors(:one)
  end

  test "should get index" do
    get est_profesors_url
    assert_response :success
  end

  test "should get new" do
    get new_est_profesor_url
    assert_response :success
  end

  test "should create est_profesor" do
    assert_difference('EstProfesor.count') do
      post est_profesors_url, params: { est_profesor: { establecimiento_id: @est_profesor.establecimiento_id, profesor_id: @est_profesor.profesor_id } }
    end

    assert_redirected_to est_profesor_url(EstProfesor.last)
  end

  test "should show est_profesor" do
    get est_profesor_url(@est_profesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_est_profesor_url(@est_profesor)
    assert_response :success
  end

  test "should update est_profesor" do
    patch est_profesor_url(@est_profesor), params: { est_profesor: { establecimiento_id: @est_profesor.establecimiento_id, profesor_id: @est_profesor.profesor_id } }
    assert_redirected_to est_profesor_url(@est_profesor)
  end

  test "should destroy est_profesor" do
    assert_difference('EstProfesor.count', -1) do
      delete est_profesor_url(@est_profesor)
    end

    assert_redirected_to est_profesors_url
  end
end
