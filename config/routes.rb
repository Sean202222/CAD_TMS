Rails.application.routes.draw do
  resources :records
  root to: 'pages#home'
  resources :trainers
  resources :employees
  # devise_for :views
  # root 'pages#home'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
