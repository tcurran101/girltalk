Rails.application.routes.draw do
  devise_for :users
  root 'static_pages#index'

  get 'home', to: 'static_pages#home'

  namespace :user do
    root :to => "static_pages#home"
  end

  resources :photos
  resources :users, only: :show
  resources :blogs
  resources :events
  resources :search
end
