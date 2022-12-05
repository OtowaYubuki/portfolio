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
  end

  def create
    @counseling = Counseling.find(params[:counseling_id])
    @reservation = Reservation.new(reservation_params)
    @reservation = current_user.reservations.build(counseling_id: params[:counseling_id])
    if @reservation.save
      redirect_to counseling_reservations_path, notice: "予約が完了しました"
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
