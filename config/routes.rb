Rails.application.routes.draw do
  resources :posts do
    resources :tags
  end
  root 'posts#index'
end
