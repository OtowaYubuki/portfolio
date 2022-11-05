Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :influencers, :only => [:index, :show]
  resources :counselings, :only => [:index, :show, :new, :create]
end
