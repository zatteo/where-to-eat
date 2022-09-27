class ReservationMailer < ApplicationMailer

  def reservation_email(reservation)
    @reservation = reservation
    @cancel_url = ENV['HOST'] + 'reservations/' + reservation.token

    mail(to: reservation.email, subject: 'Votre réservation est confirmée')
  end
end
