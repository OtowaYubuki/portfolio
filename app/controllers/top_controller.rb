class TopController < ApplicationController
  def index
    @counselings = Counseling.all
    @influencers = Influencer.all
    @reviews = Review.all
  end
end
