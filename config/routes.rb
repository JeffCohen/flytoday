Rails.application.routes.draw do

  get("/index", { :controller => "airports", :action => "list" })
  get("/details", { :controller => "airports", :action => "show" })

end
