require 'test_helper'

class WeddingRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wedding_room = wedding_rooms(:one)
  end

  test "should get index" do
    get wedding_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_wedding_room_url
    assert_response :success
  end

  test "should create wedding_room" do
    assert_difference('WeddingRoom.count') do
      post wedding_rooms_url, params: { wedding_room: { adress: @wedding_room.adress, name: @wedding_room.name } }
    end

    assert_redirected_to wedding_room_url(WeddingRoom.last)
  end

  test "should show wedding_room" do
    get wedding_room_url(@wedding_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_wedding_room_url(@wedding_room)
    assert_response :success
  end

  test "should update wedding_room" do
    patch wedding_room_url(@wedding_room), params: { wedding_room: { adress: @wedding_room.adress, name: @wedding_room.name } }
    assert_redirected_to wedding_room_url(@wedding_room)
  end

  test "should destroy wedding_room" do
    assert_difference('WeddingRoom.count', -1) do
      delete wedding_room_url(@wedding_room)
    end

    assert_redirected_to wedding_rooms_url
  end
end
