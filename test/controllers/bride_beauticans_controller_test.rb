require 'test_helper'

class BrideBeauticansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bride_beautican = bride_beauticans(:one)
  end

  test "should get index" do
    get bride_beauticans_url
    assert_response :success
  end

  test "should get new" do
    get new_bride_beautican_url
    assert_response :success
  end

  test "should create bride_beautican" do
    assert_difference('BrideBeautican.count') do
      post bride_beauticans_url, params: { bride_beautican: { fitting: @bride_beautican.fitting, meeting: @bride_beautican.meeting, name: @bride_beautican.name, user_id: @bride_beautican.user_id } }
    end

    assert_redirected_to bride_beautican_url(BrideBeautican.last)
  end

  test "should show bride_beautican" do
    get bride_beautican_url(@bride_beautican)
    assert_response :success
  end

  test "should get edit" do
    get edit_bride_beautican_url(@bride_beautican)
    assert_response :success
  end

  test "should update bride_beautican" do
    patch bride_beautican_url(@bride_beautican), params: { bride_beautican: { fitting: @bride_beautican.fitting, meeting: @bride_beautican.meeting, name: @bride_beautican.name, user_id: @bride_beautican.user_id } }
    assert_redirected_to bride_beautican_url(@bride_beautican)
  end

  test "should destroy bride_beautican" do
    assert_difference('BrideBeautican.count', -1) do
      delete bride_beautican_url(@bride_beautican)
    end

    assert_redirected_to bride_beauticans_url
  end
end
