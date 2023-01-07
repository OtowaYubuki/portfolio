class ReservationsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations
    @reservation_counselings = @user.reservation_counselings.page(params[:page]).per(5)
  end

  def new
    @counseling = Counseling.find(params[:counseling_id])
    @reservation = Reservation.new
  end

  def confirm
    @counseling = Counseling.find(params[:counseling_id])
    @reservation = Reservation.new(reservation_params)
  end

  def create
    @counseling = Counseling.find(params[:counseling_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.counseling_id = @counseling.id
    if @reservation.save
      @user = User.find(current_user.id)
      ReservationMailer.send_when_reservation_reply(@user).deliver
      redirect_to user_reservations_path(user_id: current_user.id), notice: "予約が完了しました。詳細をご登録のメールアドレス宛てにお送りしましたのでご確認ください"
    else
      render :new
    end
  end

  def destroy
    @counseling = Counseling.find(params[:counseling_id])
    @reservation = current_user.reservations.find_by(counseling_id: @counseling.id)
    @reservation.destroy
    redirect_to counseling_path, notice: "予約を取り消しました"
  end

  private

  def reservation_params
    params.require(:reservation).permit(:question, :user_id)
  end
end
