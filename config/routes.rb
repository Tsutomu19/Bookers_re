Rails.application.routes.draw do
  root 'homes#top'
  get '/about', to: 'homes#about'
  devise_for :users
resources :books
resources :users, only: [:show, :edit, :update, :index]
end

