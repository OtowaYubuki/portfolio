class CounselingsController < ApplicationController
  def index
    @counselings = Counseling.all
  end

  def show
    @counseling = Counseling.find(params[id])
  end

  # カウンセリング応募画面
  def new 
  end

  # 応募完了画面
  def create 
  end
end
