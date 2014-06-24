Rails.application.routes.draw do

  # get "/index", :controller => "airports", :action => "list"
  # get "/index", :to => 'airports#list'
  # get "/details", :controller => "airports", :action => "show"

  get '/' => 'airports#index'

  get '/airports' => 'airports#index', :as => :airports
  get '/airports/new' => 'airports#new', :as => :new_airport
  get '/airports/:id' => 'airports#show', :as => :airport

  post '/airports' => 'airports#create'

  # 1. Show an Edit Form => Update
  # 2. A Delete link => Destroy



  # http::localhost:3000/airports/5

  # Parameters: { "id" => 5 }

end
