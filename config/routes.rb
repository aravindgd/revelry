Rails.application.routes.draw do
  resources :articles

  resources :owners

  resources :articles, only: [:show] do
    get ':owner_name/articles' => 'articles#index'
  end
  resources :owners, only: [:index] do
    get ':owner_name' => 'owners#show'
  end
end
