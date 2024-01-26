Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    get :all_articles
  end
  root 'articles#index'
  namespace :admin do
    resources :articles
  end
end
