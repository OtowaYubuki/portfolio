class ReviewsController < ApplicationController
  def new
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new
  end

  def confirm
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new(review_params)
  end

  def create
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new(review_params)
    @review = current_user.reviews.build(influencer_id: params[:influencer_id])
    if @review.save
      redirect_to influencer_path(id: @influencer.id), notice: "レビューを投稿しました"
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment, :score)
  end
end
