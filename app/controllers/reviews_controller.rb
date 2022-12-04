class ReviewsController < ApplicationController
  def new
    @influencer = Influencer.find(params[:influencer_id])
    @review = Review.new
  end

  def create
    @influencer = Influencer.find(params[:influencer_id])
    @review = current_user.reviews.build(influencer_id: params[:influencer_id])
    if @review.save
      redirect_to influencer_path(@influencer.id), notice: "レビューを投稿しました"
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:score,:comment)
  end
end
