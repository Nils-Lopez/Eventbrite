Rails.application.routes.draw do
	root "event_controller#index"
  resources :event_controller
  resources :user, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	