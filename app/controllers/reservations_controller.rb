class ReservationsController < ApplicationController
  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def reservation_params
      params.require(:reservation).permit(:name, :people, :date, :restaurant_id)
    end
end
