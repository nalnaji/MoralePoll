class HomeController < ApplicationController
  def index
    @review = Review.new
  end
end
