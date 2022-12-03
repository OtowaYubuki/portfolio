Rails.application.routes.draw do
  root 'top#index'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users, :only => [:show, :edit, :destroy] do
    resources :favorites, only: [:index]
    resources :reservations, only: [:index]
    resources :relationships, only: [:index]
  end
  resources :influencers, :only => [:index, :show] do
    resource :relationships, only: [:create, :destroy]
    collection do
      get 'search'
    end
    resources :reviews, only: [:index, :create]
  end
  resources :counselings, :only => [:index, :show] do
    resource :favorites, only: [:create, :destroy]
    resources :reservations, only: [:new, :create, :destroy]
    collection do
      get 'search'
    end
  end
end

