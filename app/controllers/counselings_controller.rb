class CounselingsController < ApplicationController
  def index
    @counselings = Counseling.all
  end

  def show
    @counseling = Counseling.find(params[:id])
  end
end
