Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :tags
  end
  resources :tags
  resources :posts do
    resources :comments
  end
  resources :users do
    resources :comments
  end
  
  root 'posts#index'
end
