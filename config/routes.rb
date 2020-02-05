Rails.application.routes.draw do
  namespace :admin do
    root to: 'dashboard#index'
    resources :genres
    resources :artists
    resources :albums
    resources :songs
  end
end
