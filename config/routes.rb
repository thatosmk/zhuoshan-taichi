Rails.application.routes.draw do

  resources :clubs
  get 'dashboard/overview', as: :dashboard
  get 'dashboard/settings', as: :settings
  get 'dashboard/members', as: :members
  get 'dashboard/blog', as: :blog
  get 'dashboard/calendar', as: :calendar

  resources :contents
  resources :posts
  devise_for :users
  resources :events
  get 'site/index'
  get '/about', to: "site#about", as: "/about"
  get '/gallery', to: "site#gallery", as: "/gallery"
  get '/forms', to: "site#forms", as: "/forms"

  root to: "site#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
