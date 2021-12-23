Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  root to: 'posts#index'

  resources :posts do :comments
    resources :comments
  end

  resources :posts do :likes
    resources :likes, only: [:create, :destroy]
  end
  
  resources :users

   post "likes/:post_id/create" => "likes#create"
   post "likes/:post_id/destroy" => "likes#destroy"
   get "users/:user_id/likes" => "users#likes"

  #  post "unlikes/:post_id/create" => "unlikes#create"
  #  post "unlikes/:post_id/destroy" => "unlikes#destroy"
  #  get "users/:user_id/likes" => "users#unlikes"
end
