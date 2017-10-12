Rails.application.routes.draw do
  resources :articles
  resources :departments, only: [:show, :index]
  devise_for :users

  root "home#index"
  get '/articles/:id/destroy', to: 'articles#destroy'
  get '/department/:id', to: 'departments#show'
end
