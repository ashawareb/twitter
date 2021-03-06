Rails.application.routes.draw do
  devise_for :users
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships
  resources :posts
  # The Root URL
  root 'pages#index'

  # Routes for pages
  get '/home', to: 'pages#home'
  get '/user/:id', to: 'pages#profile'
  get '/explore', to: 'pages#explore'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
