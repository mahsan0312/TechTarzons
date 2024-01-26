Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    get :all_articles, on: :collection
  end
  root 'articles#index'
  namespace :admin do
    resources :articles
  end
end
