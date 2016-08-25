require 'test_helper'

class BrideAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bride_accessory = bride_accessories(:one)
  end

  test "should get index" do
    get bride_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_bride_accessory_url
    assert_response :success
  end

  test "should create bride_accessory" do
    assert_difference('BrideAccessory.count') do
      post bride_accessories_url, params: { bride_accessory: { color: @bride_accessory.color, name: @bride_accessory.name, size: @bride_accessory.size, user_id: @bride_accessory.user_id } }
    end

    assert_redirected_to bride_accessory_url(BrideAccessory.last)
  end

  test "should show bride_accessory" do
    get bride_accessory_url(@bride_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_bride_accessory_url(@bride_accessory)
    assert_response :success
  end

  test "should update bride_accessory" do
    patch bride_accessory_url(@bride_accessory), params: { bride_accessory: { color: @bride_accessory.color, name: @bride_accessory.name, size: @bride_accessory.size, user_id: @bride_accessory.user_id } }
    assert_redirected_to bride_accessory_url(@bride_accessory)
  end

  test "should destroy bride_accessory" do
    assert_difference('BrideAccessory.count', -1) do
      delete bride_accessory_url(@bride_accessory)
    end

    assert_redirected_to bride_accessories_url
  end
end
