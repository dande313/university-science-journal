Rails.application.routes.draw do
	

	
  resources :articles
  resources :departments
  resources :ships
  devise_for :users
  root "home#index"
end
