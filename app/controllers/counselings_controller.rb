class CounselingsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @counselings = Counseling.all
    @counselings = @q.result
  end

  def show
    @counseling = Counseling.find(params[:id])
    @influencer = @counseling.influencer
  end

  def search
    @results = @q.result
  end

  private
  def set_q
    @q = Counseling.ransack(params[:q])
  end
end
