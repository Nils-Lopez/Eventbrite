Rails.application.routes.draw do
	root "event#index"
  resources :event
  resources :user, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	