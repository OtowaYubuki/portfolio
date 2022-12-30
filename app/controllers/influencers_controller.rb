class InfluencersController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @influencers = Influencer.all.page(params[:page]).per(6)
    @reviews = Review.all.page(params[:page]).per(6)
    @influencers = @q.result.page(params[:page]).per(6)
  end

  def show
    @influencer = Influencer.find(params[:id])
    @counselings = @influencer.counselings
  end

  def search
    @results = @q.result.page(params[:page]).per(6)
    @result = @q.result.all
  end

  private
  def set_q
    @q = Influencer.ransack(params[:q])
  end
end
