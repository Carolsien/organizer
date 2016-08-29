require 'test_helper'

class ChurchDecorationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @church_decoration = church_decorations(:one)
  end

  test "should get index" do
    get church_decorations_url
    assert_response :success
  end

  test "should get new" do
    get new_church_decoration_url
    assert_response :success
  end

  test "should create church_decoration" do
    assert_difference('ChurchDecoration.count') do
      post church_decorations_url, params: { church_decoration: { amount: @church_decoration.amount, colour: @church_decoration.colour, name: @church_decoration.name } }
    end

    assert_redirected_to church_decoration_url(ChurchDecoration.last)
  end

  test "should show church_decoration" do
    get church_decoration_url(@church_decoration)
    assert_response :success
  end

  test "should get edit" do
    get edit_church_decoration_url(@church_decoration)
    assert_response :success
  end

  test "should update church_decoration" do
    patch church_decoration_url(@church_decoration), params: { church_decoration: { amount: @church_decoration.amount, colour: @church_decoration.colour, name: @church_decoration.name } }
    assert_redirected_to church_decoration_url(@church_decoration)
  end

  test "should destroy church_decoration" do
    assert_difference('ChurchDecoration.count', -1) do
      delete church_decoration_url(@church_decoration)
    end

    assert_redirected_to church_decorations_url
  end
end
