Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # devise_for :users
  root 'posts#index'
  resources :posts do
    resources :comments, only: [:create]
  end
  resources :users, only: [:show, :likes]
  resources :likes, only: [:create, :destroy]

   post "likes/:post_id/create" => "likes#create"
   post "likes/:post_id/destroy" => "likes#destroy"
   get "users/:user_id/likes" => "users#likes"

  #  post "unlikes/:post_id/create" => "unlikes#create"
  #  post "unlikes/:post_id/destroy" => "unlikes#destroy"
   get "users/:user_id/likes" => "users#unlikes"
end
