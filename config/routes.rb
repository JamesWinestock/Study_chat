Rails.application.routes.draw do

  resources :subjects do
    resources :comments, module: :subjects
  end
  resources :locations
  resources :profiles do
    resources :comments, module: :profiles
  end
  resource :session, only: [:new, :create, :destroy]
  resources :users
  get 'home/index', to: 'home#index', as: '/home'

  root 'landing#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
