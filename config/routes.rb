Rails.application.routes.draw do
  namespace :admin do
    resources :genres
    resources :artists
  end
end
