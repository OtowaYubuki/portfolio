Rails.application.routes.draw do
  root 'top#index'
  resources :users
  resources :influencers, :only => [:index, :show]
  resources :counselings, :only => [:index, :show, :new, :create]
end
