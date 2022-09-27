require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:one)
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { date: @reservation.date, name: @reservation.name, people: @reservation.people, restaurant_id: @reservation.restaurant_id } }, as: :json
    end

    assert_response :created
  end

  test "should update reservation" do
    patch reservation_url(@reservation), params: { reservation: { date: @reservation.date, name: @reservation.name, people: @reservation.people, restaurant_id: @reservation.restaurant_id } }, as: :json
    assert_response :success
  end

  test "should destroy reservation" do
    assert_difference("Reservation.count", -1) do
      delete reservation_url(@reservation), as: :json
    end

    assert_response :no_content
  end
end
