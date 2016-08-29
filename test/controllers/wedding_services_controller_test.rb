require 'test_helper'

class WeddingServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wedding_service = wedding_services(:one)
  end

  test "should get index" do
    get wedding_services_url
    assert_response :success
  end

  test "should get new" do
    get new_wedding_service_url
    assert_response :success
  end

  test "should create wedding_service" do
    assert_difference('WeddingService.count') do
      post wedding_services_url, params: { wedding_service: { contact: @wedding_service.contact, name: @wedding_service.name, who: @wedding_service.who } }
    end

    assert_redirected_to wedding_service_url(WeddingService.last)
  end

  test "should show wedding_service" do
    get wedding_service_url(@wedding_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_wedding_service_url(@wedding_service)
    assert_response :success
  end

  test "should update wedding_service" do
    patch wedding_service_url(@wedding_service), params: { wedding_service: { contact: @wedding_service.contact, name: @wedding_service.name, who: @wedding_service.who } }
    assert_redirected_to wedding_service_url(@wedding_service)
  end

  test "should destroy wedding_service" do
    assert_difference('WeddingService.count', -1) do
      delete wedding_service_url(@wedding_service)
    end

    assert_redirected_to wedding_services_url
  end
end
