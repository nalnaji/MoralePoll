class HomeController < ApplicationController
  def index
    @review = Review.new
    if session['voted'] then
      @voted = true
    end
  end
  def clear
    reset_session
    redirect_to :root
  end
end
