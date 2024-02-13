Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  resources :articles do
    get :all_articles, on: :collection
  end
  resources :categories, only: [:index, :show]
  namespace :admin do
    resources :articles
  end
end
