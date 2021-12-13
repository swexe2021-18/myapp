Rails.application.routes.draw do
  get 'likes/create'
  get 'restaurants/index'
  get 'top/index'
  resources :users
  resources :restaurants
  get 'top/main'
  post 'top/login'
  get 'top/logout'
  resources :likes
  root 'users#index'
  #root 'restaurants#index'
  #root 'top#login'
end
