Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  #Director routes
  get "/directors", to: "directors#index"
  get "/directors/youngest", to: "directors#youngest"
  get "/directors/eldest", to: "directors#eldest"
  get "/directors/:id", to: "directors#show", as: :director
  #Movie Routes
  get("/movies", { :controller => "movies", :action => "index" })
  get "/movies/:id", to: "movies#show", as: "movie"
  # Actor routes
  get("/actors", { :controller => "actors", :action => "index" })
  get "/actors/:id", to: "actors#show", as: "actor"
end
