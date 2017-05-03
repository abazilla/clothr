Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :items
    resources :roles

    root to: "users#index"
  end

  resources :items
  devise_for :users
  root 'pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end