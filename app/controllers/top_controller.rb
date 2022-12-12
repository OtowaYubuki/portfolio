class TopController < ApplicationController
  def index
    @counselings = Counseling.all 
    @influencers = Influencer.all
  end
end
