class InfluencersController < ApplicationController
  before_action :search_q, only: [:index, :search]

  def index
    @influencers = Influencer.all
  end

  def show
    @influencer = Influencer.find(params[:id])
    @counselings = @influencer.counselings
  end

  def search
    @answers = @s.result
  end

  private
  def search_q
    @s = Influencer.ransack(params[:q])
  end
end
