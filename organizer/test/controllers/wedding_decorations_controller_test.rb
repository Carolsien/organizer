require 'test_helper'

class WeddingDecorationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wedding_decoration = wedding_decorations(:one)
  end

  test "should get index" do
    get wedding_decorations_url
    assert_response :success
  end

  test "should get new" do
    get new_wedding_decoration_url
    assert_response :success
  end

  test "should create wedding_decoration" do
    assert_difference('WeddingDecoration.count') do
      post wedding_decorations_url, params: { wedding_decoration: { amount: @wedding_decoration.amount, colour: @wedding_decoration.colour, name: @wedding_decoration.name } }
    end

    assert_redirected_to wedding_decoration_url(WeddingDecoration.last)
  end

  test "should show wedding_decoration" do
    get wedding_decoration_url(@wedding_decoration)
    assert_response :success
  end

  test "should get edit" do
    get edit_wedding_decoration_url(@wedding_decoration)
    assert_response :success
  end

  test "should update wedding_decoration" do
    patch wedding_decoration_url(@wedding_decoration), params: { wedding_decoration: { amount: @wedding_decoration.amount, colour: @wedding_decoration.colour, name: @wedding_decoration.name } }
    assert_redirected_to wedding_decoration_url(@wedding_decoration)
  end

  test "should destroy wedding_decoration" do
    assert_difference('WeddingDecoration.count', -1) do
      delete wedding_decoration_url(@wedding_decoration)
    end

    assert_redirected_to wedding_decorations_url
  end
end
