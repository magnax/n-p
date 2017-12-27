Rails.application.routes.draw do
  resources :informations, only: [:create]

  namespace :admin do
    root to: 'home#index'
  end
  
  root to: 'home#index'
end
