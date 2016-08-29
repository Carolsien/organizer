require 'test_helper'

class GroomSuitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @groom_suit = groom_suits(:one)
  end

  test "should get index" do
    get groom_suits_url
    assert_response :success
  end

  test "should get new" do
    get new_groom_suit_url
    assert_response :success
  end

  test "should create groom_suit" do
    assert_difference('GroomSuit.count') do
      post groom_suits_url, params: { groom_suit: { fitting: @groom_suit.fitting, model: @groom_suit.model, size: @groom_suit.size } }
    end

    assert_redirected_to groom_suit_url(GroomSuit.last)
  end

  test "should show groom_suit" do
    get groom_suit_url(@groom_suit)
    assert_response :success
  end

  test "should get edit" do
    get edit_groom_suit_url(@groom_suit)
    assert_response :success
  end

  test "should update groom_suit" do
    patch groom_suit_url(@groom_suit), params: { groom_suit: { fitting: @groom_suit.fitting, model: @groom_suit.model, size: @groom_suit.size } }
    assert_redirected_to groom_suit_url(@groom_suit)
  end

  test "should destroy groom_suit" do
    assert_difference('GroomSuit.count', -1) do
      delete groom_suit_url(@groom_suit)
    end

    assert_redirected_to groom_suits_url
  end
end
