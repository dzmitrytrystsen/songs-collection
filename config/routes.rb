Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    root to: 'dashboard#index'
    resources :genres
    resources :artists
    resources :albums
    resources :songs
  end
end
