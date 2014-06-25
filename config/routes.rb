Rails.application.routes.draw do

  root 'airports#index'

  resources :users

  resources :flights

  # get "/index", :controller => "airports", :action => "list"
  # get "/index", :to => 'airports#list'
  # get "/details", :controller => "airports", :action => "show"

  # get '/' => 'airports#index'
  resources :airports, :except => [:delete]
  resources :sessions

  # get '/airports' => 'airports#index', :as => :airports
  # get '/airports/new' => 'airports#new', :as => :new_airport
  # get '/airports/:id' => 'airports#show', :as => :airport
  # get '/airports/:id/edit' => 'airports#edit', :as => :edit_airport
  # post '/airports' => 'airports#create'
  # patch '/airports/:id' => 'airports#update'
  # delete '/airports/:id' => 'airports#destroy'

end
