Rails.application.routes.draw do
  root 'users#show'
  devise_for :users
resources :books
resources :users, only: [:show]
resources :users, only: [:show, :edit]
end

