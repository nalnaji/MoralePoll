class ReviewsController < ApplicationController
  def create
    session['voted'] = true
    Review.create(review_params)
    redirect_to :root
  end

  private
  def review_params
    params.require(:review).permit(:rating)
  end
end
