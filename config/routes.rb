Rails.application.routes.draw do
  resources :events
  devise_for :users
  root 'home#index'
  get '/helper', to: 'home#helper'
  resources :articles
end
