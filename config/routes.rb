Rails.application.routes.draw do
  get "/products" => "products#index"

  get "/first_product", controller: "products", action: "first_product"

  get "/products/:id" => "products#show"

  post "/products" => "products#create"

  patch "/products/:id" => "products#update"

  delete "/products/:id" => "products#destroy"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
