Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root 'articles#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
