require 'test_helper'

class GroomAccessoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groom_accessory = groom_accessories(:one)
  end

  test "should get index" do
    get groom_accessories_url
    assert_response :success
  end

  test "should get new" do
    get new_groom_accessory_url
    assert_response :success
  end

  test "should create groom_accessory" do
    assert_difference('GroomAccessory.count') do
      post groom_accessories_url, params: { groom_accessory: { amount: @groom_accessory.amount, colour: @groom_accessory.colour, name: @groom_accessory.name } }
    end

    assert_redirected_to groom_accessory_url(GroomAccessory.last)
  end

  test "should show groom_accessory" do
    get groom_accessory_url(@groom_accessory)
    assert_response :success
  end

  test "should get edit" do
    get edit_groom_accessory_url(@groom_accessory)
    assert_response :success
  end

  test "should update groom_accessory" do
    patch groom_accessory_url(@groom_accessory), params: { groom_accessory: { amount: @groom_accessory.amount, colour: @groom_accessory.colour, name: @groom_accessory.name } }
    assert_redirected_to groom_accessory_url(@groom_accessory)
  end

  test "should destroy groom_accessory" do
    assert_difference('GroomAccessory.count', -1) do
      delete groom_accessory_url(@groom_accessory)
    end

    assert_redirected_to groom_accessories_url
  end
end
