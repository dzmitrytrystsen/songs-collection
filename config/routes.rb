Rails.application.routes.draw do
  namespace :admin do
    resources :genres
    resources :artists
    resources :albums
    resources :songs
  end
end
