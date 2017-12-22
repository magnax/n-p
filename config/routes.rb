Rails.application.routes.draw do
  resources :informations, only: [:create]
  
  root to: 'home#index'
end
