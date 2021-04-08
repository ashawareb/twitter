Rails.application.routes.draw do
  # The Root URL
  root 'pages#index'

  # Routes for pages
  get '/home', to: 'pages#home'
  get '/profile', to: 'pages#profile'
  get '/explore', to: 'pages#explore'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
