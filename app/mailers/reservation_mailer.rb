class ReservationMailer < ApplicationMailer

  def reservation_email(email, token)
    mail(to: email, subject: 'Votre réservation est confirmée')
  end
end
