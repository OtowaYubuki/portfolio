class ReviewsController < ApplicationController
  def new
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new
  end

  def create
  end
end
