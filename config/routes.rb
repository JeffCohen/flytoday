Rails.application.routes.draw do

  root 'airports#index'

  resources :users
  resources :flights
  resources :airports
  resources :sessions

  get '/logout' => 'sessions#destroy'

end
