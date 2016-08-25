require 'test_helper'

class BrideHairdressersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bride_hairdresser = bride_hairdressers(:one)
  end

  test "should get index" do
    get bride_hairdressers_url
    assert_response :success
  end

  test "should get new" do
    get new_bride_hairdresser_url
    assert_response :success
  end

  test "should create bride_hairdresser" do
    assert_difference('BrideHairdresser.count') do
      post bride_hairdressers_url, params: { bride_hairdresser: { fitting: @bride_hairdresser.fitting, meeting: @bride_hairdresser.meeting, name: @bride_hairdresser.name, user_id: @bride_hairdresser.user_id } }
    end

    assert_redirected_to bride_hairdresser_url(BrideHairdresser.last)
  end

  test "should show bride_hairdresser" do
    get bride_hairdresser_url(@bride_hairdresser)
    assert_response :success
  end

  test "should get edit" do
    get edit_bride_hairdresser_url(@bride_hairdresser)
    assert_response :success
  end

  test "should update bride_hairdresser" do
    patch bride_hairdresser_url(@bride_hairdresser), params: { bride_hairdresser: { fitting: @bride_hairdresser.fitting, meeting: @bride_hairdresser.meeting, name: @bride_hairdresser.name, user_id: @bride_hairdresser.user_id } }
    assert_redirected_to bride_hairdresser_url(@bride_hairdresser)
  end

  test "should destroy bride_hairdresser" do
    assert_difference('BrideHairdresser.count', -1) do
      delete bride_hairdresser_url(@bride_hairdresser)
    end

    assert_redirected_to bride_hairdressers_url
  end
end
