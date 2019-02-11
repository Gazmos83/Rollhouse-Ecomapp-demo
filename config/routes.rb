Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "user_registrations" }

  resources :products do
    resources :comments
  end

  resources :users

  get 'simple_pages/products'
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  post 'simple_pages/thank_you'
  root 'simple_pages#index'
  post 'payments/create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: [:index, :show, :create, :destroy]

end
