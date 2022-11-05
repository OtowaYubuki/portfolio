Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :influencers, :only => [:index, :show]
end
