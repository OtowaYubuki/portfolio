class TopController < ApplicationController
  def index
    @counselings = Counseling.all 
  end
end
