Rails.application.routes.draw do
  root 'top#index'
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :users, :only => [:show, :edit, :destroy] do
    member do
      get :favorites
    end
  end
  resources :influencers, :only => [:index, :show]
  resources :counselings do
    resource :favorites, only: [:create, :destroy]
  end
end
