Rails.application.routes.draw do
  resources :articles, only: [:show]
  get ':owner_name/articles' => 'articles#index'
  resources :owners, only: [:index]
  get ':owner_name' => 'owners#show'
end
