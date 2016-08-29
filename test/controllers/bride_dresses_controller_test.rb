require 'test_helper'

class BrideDressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bride_dress = bride_dresses(:one)
  end

  test "should get index" do
    get bride_dresses_url
    assert_response :success
  end

  test "should get new" do
    get new_bride_dress_url
    assert_response :success
  end

  test "should create bride_dress" do
    assert_difference('BrideDress.count') do
      post bride_dresses_url, params: { bride_dress: { fitting: @bride_dress.fitting, model: @bride_dress.model, size: @bride_dress.size, user_id: @bride_dress.user_id } }
    end

    assert_redirected_to bride_dress_url(BrideDress.last)
  end

  test "should show bride_dress" do
    get bride_dress_url(@bride_dress)
    assert_response :success
  end

  test "should get edit" do
    get edit_bride_dress_url(@bride_dress)
    assert_response :success
  end

  test "should update bride_dress" do
    patch bride_dress_url(@bride_dress), params: { bride_dress: { fitting: @bride_dress.fitting, model: @bride_dress.model, size: @bride_dress.size, user_id: @bride_dress.user_id } }
    assert_redirected_to bride_dress_url(@bride_dress)
  end

  test "should destroy bride_dress" do
    assert_difference('BrideDress.count', -1) do
      delete bride_dress_url(@bride_dress)
    end

    assert_redirected_to bride_dresses_url
  end
end
