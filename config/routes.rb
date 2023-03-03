Rails.application.routes.draw do
  root "blog#index"
  
  namespace :writer do
    root 'posts#index'
    resources :categories
    resources :users
    resources :posts
  end
  
  get ":slug", to: "blog#post", as: "post"
end
