require "test_helper"

class SadminestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sadminest = sadminests(:one)
  end

  test "should get index" do
    get sadminests_url
    assert_response :success
  end

  test "should get new" do
    get new_sadminest_url
    assert_response :success
  end

  test "should create sadminest" do
    assert_difference('Sadminest.count') do
      post sadminests_url, params: { sadminest: { establecimiento_id: @sadminest.establecimiento_id, superadmin_id: @sadminest.superadmin_id } }
    end

    assert_redirected_to sadminest_url(Sadminest.last)
  end

  test "should show sadminest" do
    get sadminest_url(@sadminest)
    assert_response :success
  end

  test "should get edit" do
    get edit_sadminest_url(@sadminest)
    assert_response :success
  end

  test "should update sadminest" do
    patch sadminest_url(@sadminest), params: { sadminest: { establecimiento_id: @sadminest.establecimiento_id, superadmin_id: @sadminest.superadmin_id } }
    assert_redirected_to sadminest_url(@sadminest)
  end

  test "should destroy sadminest" do
    assert_difference('Sadminest.count', -1) do
      delete sadminest_url(@sadminest)
    end

    assert_redirected_to sadminests_url
  end
end
