Rails.application.routes.draw do
  resources :contents
  resources :posts
  devise_for :users
  resources :events
  get 'site/index'
  get '/about', to: "site#about", as: "/about"

  root to: "site#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
