class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products.as_json
  end

  def first_product
    product = Product.first
    render json: product.as_json
    
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end

  def create
    product = Product.new(name: "Hydrangea", price: 30, image_url: "https://media.istockphoto.com/photos/pink-and-purple-hydrangea-flowers-lacecap-hydrangea-bush-shady-garden-picture-id507187093?s=612x612", description: "beautiful plant")
    product.save
    render json: product.as_json
  end
end
