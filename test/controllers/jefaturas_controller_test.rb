require "test_helper"

class JefaturasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jefatura = jefaturas(:one)
  end

  test "should get index" do
    get jefaturas_url
    assert_response :success
  end

  test "should get new" do
    get new_jefatura_url
    assert_response :success
  end

  test "should create jefatura" do
    assert_difference('Jefatura.count') do
      post jefaturas_url, params: { jefatura: { curso_id: @jefatura.curso_id, profesor_id: @jefatura.profesor_id } }
    end

    assert_redirected_to jefatura_url(Jefatura.last)
  end

  test "should show jefatura" do
    get jefatura_url(@jefatura)
    assert_response :success
  end

  test "should get edit" do
    get edit_jefatura_url(@jefatura)
    assert_response :success
  end

  test "should update jefatura" do
    patch jefatura_url(@jefatura), params: { jefatura: { curso_id: @jefatura.curso_id, profesor_id: @jefatura.profesor_id } }
    assert_redirected_to jefatura_url(@jefatura)
  end

  test "should destroy jefatura" do
    assert_difference('Jefatura.count', -1) do
      delete jefatura_url(@jefatura)
    end

    assert_redirected_to jefaturas_url
  end
end
