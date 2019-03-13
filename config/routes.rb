Rails.application.routes.draw do
  devise_for :users, path: '', controllers: { :registrations => 'registrations' }, path_names: { sign_in: 'login', sign_out: 'logout' }
  # 5.8 nested resource
  resources :products do
    resources :comments
  end
  resources :users
  resources :orders, only:[:index, :destroy]


  mount ActionCable.server => '/cable'


  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/index'
  get 'orders/show'
  get 'users/index'
  post 'simple_pages/thank_you'

  root 'simple_pages#landing_page'

  post 'payments/create'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders, only: [:index, :show, :create, :destroy]

end
