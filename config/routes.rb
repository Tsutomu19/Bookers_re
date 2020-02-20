Rails.application.routes.draw do
  root 'homes#top'
  get '/home/about' => 'homes#about'
  get '/home' => 'homes#top'
  devise_for :users
resources :books
resources :users, only: [:show, :edit, :update, :index]
end

