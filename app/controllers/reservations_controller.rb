class ReservationsController < ApplicationController
  def new
    @counseling = Counseling.find(params[:counseling_id])
  end

  def create
    @reservation = current_user.reservations.create(counseling_id: params[:counseling_id])
    @reservation.create
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @counseling = Counseling.find(params[:counseling_id])
    @reservation = current_user.reservations.find_by(counseling_id: @counseling.id)
    @reservation.destroy
    redirect_back(fallback_location: root_path)
  end
end
