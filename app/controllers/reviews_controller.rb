class ReviewsController < ApplicationController

  before_action :check_if_owner, only: [:edit, :update, :destroy]

  def check_if_owner

    review = Review.find(params[:id])
    if review.user_id != current_user.id
      redirect_to "/reviews", notice: "Nope!, That is not yours"
    end
  end

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.venue_id = params[:venue_id]
    @review.general_rating = params[:general_rating]
    @review.parking_lot = params[:parking_lot]
    @review.parking_street = params[:parking_street]
    @review.parking_valet = params[:parking_valet]
    @review.dish_name = params[:dish_name]
    @review.dish_rating = params[:dish_rating]
    @review.atmosphere_rating = params[:atmosphere_rating]
    @review.dish_comments = params[:dish_comments]
    @review.atmosphere_comments = params[:atmosphere_comments]
    @review.sit_down = params[:sit_down]
    @review.average_per_person_price = params[:average_per_person_price]
    @review.general_comments = params[:general_comments]
    @review.price_with_drinks = params[:price_with_drinks]
    @review.user_id = current_user.id

    if @review.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.venue_id = params[:venue_id]
    @review.general_rating = params[:general_rating]
    @review.parking_lot = params[:parking_lot]
    @review.parking_street = params[:parking_street]
    @review.parking_valet = params[:parking_valet]
    @review.dish_name = params[:dish_name]
    @review.dish_rating = params[:dish_rating]
    @review.atmosphere_rating = params[:atmosphere_rating]
    @review.dish_comments = params[:dish_comments]
    @review.atmosphere_comments = params[:atmosphere_comments]
    @review.sit_down = params[:sit_down]
    @review.average_per_person_price = params[:average_per_person_price]
    @review.general_comments = params[:general_comments]
    @review.price_with_drinks = params[:price_with_drinks]
    @review.user_id = current_user.id

    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to "/reviews", :notice => "Review deleted."
  end
end
