Rails.application.routes.draw do



  resources :articles
  resources :departments, only: [:show, :index]
  devise_for :users
  root "home#index"
end
