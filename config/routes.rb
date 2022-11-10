Rails.application.routes.draw do
  get 'favorites/create'
  get 'favorites/destroy'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root 'top#index'
  resources :users, :only => [:show, :edit, :destroy]
  resources :influencers, :only => [:index, :show]
  resources :counselings, :only => [:index, :show, :new, :create]
end
