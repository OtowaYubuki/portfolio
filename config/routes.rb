Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :users
  resources :influencers, :only => [:index, :show]
  resources :counselings, :only => [:index, :show, :new, :create]
end
