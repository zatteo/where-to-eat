class Reservation < ApplicationRecord
  belongs_to :restaurant

  after_create :send_reservation_email, unless: :skip_callbacks
  cattr_accessor :skip_callbacks
  skip_callback :after_create, if: -> { age > 18 }

  def send_reservation_email
    ReservationMailer.reservation_email(self).deliver_now
  end
end
