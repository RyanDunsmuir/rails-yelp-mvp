class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

  # POST /restaurants/:restaurant_id/reviews
  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save # true / false
      redirect_to restaurant_path(@restaurant)
    else
      render :new # render the new.html.erb view
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
