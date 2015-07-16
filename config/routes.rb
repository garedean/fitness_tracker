Rails.application.routes.draw do
  root to: "foods#index"
  devise_for :users

  resources :users, only: [:show] do
    resources :foods
  end
end
