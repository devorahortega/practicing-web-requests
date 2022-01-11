require "http"

response = HTTP.get("https://http://localhost:3000/all_products.json")

products = response.parse(:json)

pp products
