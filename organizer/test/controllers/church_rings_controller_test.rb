require 'test_helper'

class ChurchRingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @church_ring = church_rings(:one)
  end

  test "should get index" do
    get church_rings_url
    assert_response :success
  end

  test "should get new" do
    get new_church_ring_url
    assert_response :success
  end

  test "should create church_ring" do
    assert_difference('ChurchRing.count') do
      post church_rings_url, params: { church_ring: { name: @church_ring.name, size: @church_ring.size } }
    end

    assert_redirected_to church_ring_url(ChurchRing.last)
  end

  test "should show church_ring" do
    get church_ring_url(@church_ring)
    assert_response :success
  end

  test "should get edit" do
    get edit_church_ring_url(@church_ring)
    assert_response :success
  end

  test "should update church_ring" do
    patch church_ring_url(@church_ring), params: { church_ring: { name: @church_ring.name, size: @church_ring.size } }
    assert_redirected_to church_ring_url(@church_ring)
  end

  test "should destroy church_ring" do
    assert_difference('ChurchRing.count', -1) do
      delete church_ring_url(@church_ring)
    end

    assert_redirected_to church_rings_url
  end
end
