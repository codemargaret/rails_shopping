Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root :to => 'products#index'

  resources :products

  resources :orders

  resources :order_items

  resource :cart, only: [:show]

  resources :charges
end
