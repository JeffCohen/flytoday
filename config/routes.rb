Rails.application.routes.draw do

  # get "/index", :controller => "airports", :action => "list"
  # get "/index", :to => 'airports#list'
  # get "/details", :controller => "airports", :action => "show"

  get '/' => 'airports#list'

  get '/airports' => 'airports#index'
  get '/airports/new' => 'airports#new'
  get '/airports/:id' => 'airports#show'

  post '/airports' => ....

  # http::localhost:3000/airports/5

  # Parameters: { "id" => 5 }

end
