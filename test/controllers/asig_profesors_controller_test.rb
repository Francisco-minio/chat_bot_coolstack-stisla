require "test_helper"

class AsigProfesorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asig_profesor = asig_profesors(:one)
  end

  test "should get index" do
    get asig_profesors_url
    assert_response :success
  end

  test "should get new" do
    get new_asig_profesor_url
    assert_response :success
  end

  test "should create asig_profesor" do
    assert_difference('AsigProfesor.count') do
      post asig_profesors_url, params: { asig_profesor: { asignatura_id: @asig_profesor.asignatura_id, profesor_id: @asig_profesor.profesor_id } }
    end

    assert_redirected_to asig_profesor_url(AsigProfesor.last)
  end

  test "should show asig_profesor" do
    get asig_profesor_url(@asig_profesor)
    assert_response :success
  end

  test "should get edit" do
    get edit_asig_profesor_url(@asig_profesor)
    assert_response :success
  end

  test "should update asig_profesor" do
    patch asig_profesor_url(@asig_profesor), params: { asig_profesor: { asignatura_id: @asig_profesor.asignatura_id, profesor_id: @asig_profesor.profesor_id } }
    assert_redirected_to asig_profesor_url(@asig_profesor)
  end

  test "should destroy asig_profesor" do
    assert_difference('AsigProfesor.count', -1) do
      delete asig_profesor_url(@asig_profesor)
    end

    assert_redirected_to asig_profesors_url
  end
end
