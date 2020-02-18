Rails.application.routes.draw do
  root 'books#top'
  devise_for :users
resources :books
resources :users, only: [:show, :edit, :update, :index]
end

