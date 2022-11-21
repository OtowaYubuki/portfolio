class InfluencersController < ApplicationController
  def index
    @influencers = Influencer.all
  end

  def show
  end
end
