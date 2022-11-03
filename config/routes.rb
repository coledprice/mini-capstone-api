Rails.application.routes.draw do
 get "/products" => "products#index"

 get "/first_product", controller: "products", action: "first_product"

 get "/products/:id" => "products#show"
end
