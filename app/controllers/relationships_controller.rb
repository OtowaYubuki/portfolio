class RelationshipsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @follow_influencers = @user.follow_influencers.page(params[:page]).per(5)
  end

  def create
    @relationship = current_user.relationships.create(influencer_id: params[:influencer_id])
    @relationship.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @influencer = Influencer.find(params[:influencer_id])
    @relationship = current_user.relationships.find_by(influencer_id: @influencer.id)
    @relationship.destroy
    redirect_back(fallback_location: root_path)
  end
end
