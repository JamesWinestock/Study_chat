Rails.application.routes.draw do

  resources :profiles
  resource :session, only: [:new, :create, :destroy]
  resources :users
  get 'home/index', to: 'home#index', as: '/home'

  root 'landing#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
