Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # get 'home/index'
  root 'home#index'
  
  post "toggle_like", to:  "likes#toggle_like", as: :toggle_like

  resources :comments, only: [:create, :destroy]
end
