require 'test_helper'

class ChurchCeremoniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @church_ceremony = church_ceremonies(:one)
  end

  test "should get index" do
    get church_ceremonies_url
    assert_response :success
  end

  test "should get new" do
    get new_church_ceremony_url
    assert_response :success
  end

  test "should create church_ceremony" do
    assert_difference('ChurchCeremony.count') do
      post church_ceremonies_url, params: { church_ceremony: { adress: @church_ceremony.adress, date: @church_ceremony.date, name: @church_ceremony.name } }
    end

    assert_redirected_to church_ceremony_url(ChurchCeremony.last)
  end

  test "should show church_ceremony" do
    get church_ceremony_url(@church_ceremony)
    assert_response :success
  end

  test "should get edit" do
    get edit_church_ceremony_url(@church_ceremony)
    assert_response :success
  end

  test "should update church_ceremony" do
    patch church_ceremony_url(@church_ceremony), params: { church_ceremony: { adress: @church_ceremony.adress, date: @church_ceremony.date, name: @church_ceremony.name } }
    assert_redirected_to church_ceremony_url(@church_ceremony)
  end

  test "should destroy church_ceremony" do
    assert_difference('ChurchCeremony.count', -1) do
      delete church_ceremony_url(@church_ceremony)
    end

    assert_redirected_to church_ceremonies_url
  end
end
