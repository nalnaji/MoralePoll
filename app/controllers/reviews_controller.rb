class ReviewsController < ApplicationController
  def create
    Review.create(review_params)
    redirect_to :root
  end

  private
  def review_params
    params.require(:review).permit(:rating)
  end
end
