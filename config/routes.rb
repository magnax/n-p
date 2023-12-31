# frozen_string_literal: true

Rails.application.routes.draw do
  resources :functions
  resources :buildings
  resources :parishes
  resources :dioceses
  resources :towns
  resources :countries
  resources :people
  resources :informations, only: [:create]

  namespace :admin do
    resources :informations, only: %i[index show]
    root to: 'home#index'
  end

  root to: 'home#index'
end
