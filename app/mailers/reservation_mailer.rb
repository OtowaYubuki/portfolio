class ReservationMailer < ApplicationMailer
  def send_when_reservation_reply(user)
    @user = user
    mail(:subject => "【meseling】ご予約ありがとうございます", to: user.email)
  end
end
