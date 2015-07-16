Rails.application.routes.draw do
  root to: "home_page#index"
  devise_for :users

  resources :users, only: [:show] do
    resources :foods
  end
end
