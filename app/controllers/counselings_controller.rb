class CounselingsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @counselings = Counseling.all.page(params[:page]).per(5)
    @counselings = @q.result.all.page(params[:page]).per(5)
  end

  def show
    @counseling = Counseling.find(params[:id])
    @influencer = @counseling.influencer
    @people =  @counseling.people - @counseling.reservations.count
  end

  def search
    @results = @q.result.page(params[:page]).per(5)
    @result = @q.result.all
  end

  private

  def set_q
    @q = Counseling.ransack(params[:q])
  end
end
