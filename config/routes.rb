Rails.application.routes.draw do
  devise_for :users
  root to: "blog/posts#index"

  namespace :blog do
    resources :posts
    resources :users
  end

end
