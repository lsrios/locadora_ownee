Rails.application.routes.draw do
  resources :genres
  resources :movies
  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
