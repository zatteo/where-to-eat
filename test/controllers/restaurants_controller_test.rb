require "test_helper"

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url, as: :json
    data = JSON.parse(response.body)
    assert_response :success
    assert data.length == 3
  end

  test "should get index and filter" do
    get restaurants_url(city: "Bordeaux"), as: :json
    data = JSON.parse(response.body)
    assert_response :success
    assert data.length == 2
  end
end
