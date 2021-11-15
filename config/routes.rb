Rails.application.routes.draw do
  #get 'top/index'
  resources :users
  #resources :tweets
  #get 'top/main'
  #post 'top/login'
  #get 'top/logout'
  #resources :likes
  root 'users#index'
end
