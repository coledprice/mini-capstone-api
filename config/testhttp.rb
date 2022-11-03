require "http"
system "clear"

puts "Welcome to the garden spot"
puts "please type input a number 1-3 to see our stuff"
response = gets.chomp 

if response == 1
  response = HTTP.get("http://localhost:3000/products/1")
  products = response.parse(:json)

  pp products
end