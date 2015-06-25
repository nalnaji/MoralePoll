class HomeController < ApplicationController
  def index
    @review = Review.new
    @average_review = Review.rating_average.round
    if session['voted'] then
      @voted = true
    end
  end
  def clear
    reset_session
    redirect_to :root
  end
end
