Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'tourings/index'
  devise_for :users
  root to: "tourings#index"
  resources :tourings
  resources :users, only: [:index, :show]
end
