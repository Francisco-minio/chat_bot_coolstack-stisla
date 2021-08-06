require "test_helper"

class SuperEstabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @super_estab = super_estabs(:one)
  end

  test "should get index" do
    get super_estabs_url
    assert_response :success
  end

  test "should get new" do
    get new_super_estab_url
    assert_response :success
  end

  test "should create super_estab" do
    assert_difference('SuperEstab.count') do
      post super_estabs_url, params: { super_estab: { establecimiento_id: @super_estab.establecimiento_id, superadminin_id: @super_estab.superadminin_id } }
    end

    assert_redirected_to super_estab_url(SuperEstab.last)
  end

  test "should show super_estab" do
    get super_estab_url(@super_estab)
    assert_response :success
  end

  test "should get edit" do
    get edit_super_estab_url(@super_estab)
    assert_response :success
  end

  test "should update super_estab" do
    patch super_estab_url(@super_estab), params: { super_estab: { establecimiento_id: @super_estab.establecimiento_id, superadminin_id: @super_estab.superadminin_id } }
    assert_redirected_to super_estab_url(@super_estab)
  end

  test "should destroy super_estab" do
    assert_difference('SuperEstab.count', -1) do
      delete super_estab_url(@super_estab)
    end

    assert_redirected_to super_estabs_url
  end
end
