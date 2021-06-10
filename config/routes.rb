Rails.application.routes.draw do
  get 'tourings/index'
  devise_for :users
  root to: "tourings#index"
  resources :tourings, only: [:index]
  resources :users, only: :show
end
