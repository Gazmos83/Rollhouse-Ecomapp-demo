Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users, except: [:index]
  get 'orders/index'
  get 'orders/show'
  get 'simple_pages/index'
  get 'products/index'
  get 'products/show'
  get 'simple_pages/contact'
  get 'simple_pages/landing_page'
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
