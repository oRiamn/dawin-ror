Rails.application.routes.draw do
  devise_for :users
  root to: "backend/posts#index"

  namespace :backend do
    resources :posts
  end
end
