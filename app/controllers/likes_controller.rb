class LikesController < ApplicationController
  def create 
    restaurant = Restaurant.find(params[:restaurant_id])
    unless restaurant.liked?(current_user)
      restaurant.like(current_user)
    end
    redirect_to restaurants_path
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    if restaurant.liked?(current_user)
      restaurant.unlike(current_user)
    end
    redirect_to restaurants_path
  end
  
  def index
    @likes = Like.all
  end
end
