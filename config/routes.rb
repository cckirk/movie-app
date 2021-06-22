Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/actors", controller: "actor", action: "index"
  get "/movies", controller: "movie", action: "index"
  post "/movies/:id", controller: "movie", action: "create"
  patch "/movies", controller: "movie",
  action: "update"
  delete "/movies", controller: "movie", action: "destroy"
end
