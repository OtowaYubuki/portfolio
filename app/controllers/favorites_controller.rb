class FavoritesController < ApplicationController
  def index
  end
  
  def create
    @favorite = current_user.favorites.create(counseling_id: params[:counseling_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @counseling = Counseling.find(params[:counseling_id])
    @favorite = current_user.favorites.find_by(counseling_id: @counseling.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
