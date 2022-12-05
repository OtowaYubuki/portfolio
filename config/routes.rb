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
    resource :reviews, only: [:new, :create] do
      collection do
        post :confirm
      end
    end
  end
  resources :counselings, :only => [:index, :show] do
    collection do
      get 'search'
    end
    resource :favorites, only: [:create, :destroy]
    resources :reservations, only: [:new, :create, :destroy] do
      collection do
        post :confirm
      end
    end
  end
end

