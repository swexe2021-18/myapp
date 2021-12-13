class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @q = Restaurant.ransack(params[:q])
    @restaurants = @q.result(distinct: true)
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    user = User.find_by(uid: current_user)
    @restaurant = Restaurant.new(shop: params[:restaurant][:shop], area: params[:restaurant][:area], 
    time: params[:restaurant][:time], deadtime: params[:restaurant][:deadtime], day: params[:restaurant][:day], 
    other: params[:restaurant][:other], genre: params[:restaurant][:genre], user_id: current_user.id)
    if @restaurant.save
      flash[:notice] = "投稿しました"
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    restaurant = Restaurant.find(params[:id])
    restaurant.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to root_path
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
  end
  
  def edit
    @restaurant = Restaurant.find(params[:id])
  end
  
  def update
    restaurant =Restaurant.find(params[:id])
    restaurant.update(shop: params[:restaurant][:shop], area: params[:restaurant][:area], 
    time: params[:restaurant][:time], deadtime: params[:restaurant][:deadtime], day: params[:restaurant][:day], 
    other: params[:restaurant][:other], genre: params[:restaurant][:genre], user_id: current_user.id)
    flash[:notice] = "更新しました"
    redirect_to root_path
  end
end
