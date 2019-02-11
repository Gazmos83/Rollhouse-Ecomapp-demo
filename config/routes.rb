Rails.application.routes.draw do

  devise_for :users
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users, except: [:index]

  get 'orders/index'
  get 'orders/show'
  get 'products/index'
  get 'products/show'
  get 'simple_pages/about'
  get 'simple_pages/faq'
  get 'simple_pages/index'
  get 'simple_pages/contact'
  get 'simple_pages/landing_page'
  get 'users/index'
  get 'devise/sessions/new'

  post 'simple_pages/thank_you'
  post 'payments/create'

  root 'devise/sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
