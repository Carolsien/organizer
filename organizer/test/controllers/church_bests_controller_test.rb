require 'test_helper'

class ChurchBestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @church_best = church_bests(:one)
  end

  test "should get index" do
    get church_bests_url
    assert_response :success
  end

  test "should get new" do
    get new_church_best_url
    assert_response :success
  end

  test "should create church_best" do
    assert_difference('ChurchBest.count') do
      post church_bests_url, params: { church_best: { name: @church_best.name, surname: @church_best.surname } }
    end

    assert_redirected_to church_best_url(ChurchBest.last)
  end

  test "should show church_best" do
    get church_best_url(@church_best)
    assert_response :success
  end

  test "should get edit" do
    get edit_church_best_url(@church_best)
    assert_response :success
  end

  test "should update church_best" do
    patch church_best_url(@church_best), params: { church_best: { name: @church_best.name, surname: @church_best.surname } }
    assert_redirected_to church_best_url(@church_best)
  end

  test "should destroy church_best" do
    assert_difference('ChurchBest.count', -1) do
      delete church_best_url(@church_best)
    end

    assert_redirected_to church_bests_url
  end
end
