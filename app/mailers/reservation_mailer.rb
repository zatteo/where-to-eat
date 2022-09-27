class ReservationMailer < ApplicationMailer

  def reservation_email(reservation)
    @cancel_url = ENV['HOST'] + reservation.token

    mail(to: reservation.email, subject: 'Votre réservation est confirmée')
  end
end
