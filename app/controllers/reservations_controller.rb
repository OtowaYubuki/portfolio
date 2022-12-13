class ReservationsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations
    @reservation_counselings = @user.reservation_counselings
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
    @reservation = current_user.reservations.build(counseling_id: params[:counseling_id])
    if @reservation.save
      ReservationMailer.with(user: @user).send_when_reservation_reply
      redirect_to user_reservations_path(user_id: current_user.id), notice: "予約が完了しました"
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
    params.require(:reservation).permit(:question)
  end
end
