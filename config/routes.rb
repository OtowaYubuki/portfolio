Rails.application.routes.draw do
  get 'relationships/index'
  get 'relationships/create'
  get 'relationships/destroy'
  root 'top#index'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users, :only => [:show, :edit, :destroy] do
    resources :favorites, only: [:index]
    resources :reservations, only: [:index]
  end
  resources :influencers, :only => [:index, :show]
  resources :counselings, :only => [:index, :show] do
    resource :favorites, only: [:create, :destroy]
    resources :reservations, only: [:new, :create, :destroy]
  end
end

