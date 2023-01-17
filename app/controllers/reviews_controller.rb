class ReviewsController < ApplicationController
  def index
    @influencer = Influencer.find(params[:influencer_id])
    @reviews = @influencer.reviews
  end

  def new
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new
  end

  def confirm
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new(review_params)
    if @review.score.blank?
      redirect_to new_influencer_review_path(@influencer.id), notice: "星評価は必須です"
    end
  end

  def create
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.influencer_id = @influencer.id
    if @review.save
      redirect_to influencer_path(id: @influencer.id), notice: "レビューを投稿しました"
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :score, :influencer_id)
  end
end
