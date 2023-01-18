Rails.application.routes.draw do
  resources :bloks
  resources :lists
  resources :posts
  resources :articles
  devise_for :users
  get 'dashboard/index'
  # root "articles#index"
  root "dashboard#index"
end
