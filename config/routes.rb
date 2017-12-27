Rails.application.routes.draw do
  resources :informations, only: [:create]

  namespace :admin do
    resources :informations, only: [:index, :show]
    root to: 'home#index'
  end
  
  root to: 'home#index'
end
