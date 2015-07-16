Rails.application.routes.draw do
  root to: "foods#index"
  devise_for :users

  resources :users, only: [:show]
  resources :foods
end
