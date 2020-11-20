Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'

  resources :healths
  resources :foods 
  resources :meals

  resources :users, only: [:edit, :update]
end
