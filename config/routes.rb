Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root 'articles#index'
  namespace :admin do
    resources :articles
  end
end
