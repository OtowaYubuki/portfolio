Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root 'top#index'
  resources :users, :only => [:show, :edit]
  resources :influencers, :only => [:index, :show]
  resources :counselings, :only => [:index, :show, :new, :create]
end
