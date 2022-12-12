class InfluencersController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @influencers = Influencer.all
    @reviews = Review.all
  end

  def show
    @influencer = Influencer.find(params[:id])
    @counselings = @influencer.counselings
  end

  def search
    @results = @q.result
  end

  private
  def set_q
    @q = Influencer.ransack(params[:q])
  end
end
