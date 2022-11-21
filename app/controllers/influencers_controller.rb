class InfluencersController < ApplicationController
  def index
    @influencers = Influencer.all
  end

  def show
    @influencer = Influencer.find(params[:id])
    @counselings = @influencer.counselings
  end
end
