require "test_helper"

class SuperadmininsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @superadminin = superadminins(:one)
  end

  test "should get index" do
    get superadminins_url
    assert_response :success
  end

  test "should get new" do
    get new_superadminin_url
    assert_response :success
  end

  test "should create superadminin" do
    assert_difference('Superadminin.count') do
      post superadminins_url, params: { superadminin: { apellido: @superadminin.apellido, email: @superadminin.email, nombre: @superadminin.nombre, password: @superadminin.password, rol: @superadminin.rol } }
    end

    assert_redirected_to superadminin_url(Superadminin.last)
  end

  test "should show superadminin" do
    get superadminin_url(@superadminin)
    assert_response :success
  end

  test "should get edit" do
    get edit_superadminin_url(@superadminin)
    assert_response :success
  end

  test "should update superadminin" do
    patch superadminin_url(@superadminin), params: { superadminin: { apellido: @superadminin.apellido, email: @superadminin.email, nombre: @superadminin.nombre, password: @superadminin.password, rol: @superadminin.rol } }
    assert_redirected_to superadminin_url(@superadminin)
  end

  test "should destroy superadminin" do
    assert_difference('Superadminin.count', -1) do
      delete superadminin_url(@superadminin)
    end

    assert_redirected_to superadminins_url
  end
end
