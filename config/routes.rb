Rails.application.routes.draw do
  resources :people
  resources :informations, only: [:create]

  namespace :admin do
    resources :informations, only: [:index, :show]
    root to: 'home#index'
  end
  
  root to: 'home#index'
end
