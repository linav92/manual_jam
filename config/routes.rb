Rails.application.routes.draw do
  root 'home#index'

  resources :stories
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  # get 'stories/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
