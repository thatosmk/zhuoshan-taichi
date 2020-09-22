Rails.application.routes.draw do

  mount SimpleDiscussion::Engine => "/forum"
  resources :taichi_files
  get 'users_dashboard/videos'
  get 'users_dashboard/files'
  get 'users_dashboard/gallery'
  get 'users_dashboard/settings'
  resources :clubs
  resources :videos
  get 'dashboard/overview', as: :dashboard
  get 'dashboard/settings', as: :settings
  get 'dashboard/members', as: :members
  get 'dashboard/blog', as: :blog
  get 'dashboard/calendar', as: :calendar
  get 'dashboard/resources', to: "dashboard#videos", as: :club_videos

  resources :contents
  resources :posts
  devise_for :users
  resources :events
  get 'site/index'
  get '/about', to: "site#about", as: "/about"
  get '/gallery', to: "site#gallery", as: "/gallery"
  get '/forms', to: "site#forms", as: "/forms"

  unauthenticated :users do
    root to: "site#index"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
