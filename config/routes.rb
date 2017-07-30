Rails.application.routes.draw do
  devise_for :users
  resources :customers
  root 'customers#index'
  resources :comments, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
