class RestaurantsController < ApplicationController
  # GET /restaurants
  def index
    if restaurant_params[:city]
      @restaurants = Restaurant.where(city: restaurant_params[:city])
    else
      @restaurants = Restaurant.all
    end

    render json: @restaurants
  end

  private

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.permit(:city)
    end
end
