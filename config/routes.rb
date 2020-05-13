Rails.application.routes.draw do
  resources :participants, only: [:new, :create, :index, :destroy]
	root "event#index"
  resources :event
  resources :user, only: [:show]
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
	