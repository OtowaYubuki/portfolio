class ReservationMailer < ApplicationMailer
  def send_when_reservation_reply(user, reservation)
    @user = user
    mail to: user.email, subject: '【meseling】 ご予約ありがとうございます'
  end
end
