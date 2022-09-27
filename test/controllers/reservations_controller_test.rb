require "test_helper"

class ReservationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservation = reservations(:john)
  end

  test "should create reservation" do
    assert_difference("Reservation.count") do
      post reservations_url, params: { reservation: { date: @reservation.date, name: @reservation.name, people: @reservation.people, restaurant_id: @reservation.restaurant_id } }, as: :json
    end

    assert_response :created
  end
end
