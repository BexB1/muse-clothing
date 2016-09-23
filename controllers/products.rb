require_relative "../models/product"
require_relative "../models/review"

Product.new("Dry Ice", "/productpics/dryice1.jpg", "/productpics/dryicelarge.jpg", "/productpics/dryicelarge2.jpg")
Product.new("Gemini", "/productpics/gemini.jpg", "/productpics/dryicelarge.jpg", "/productpics/dryicelarge2.jpg")

Review.new("Really nice material, great fit. Love it!", "Gems1990")
Review.new("Speedy delivery and really helpful customer support", "KatLady")
Review.new("Really love my shirt, thanks!", "BethLovesCake")


# Index
get "/products" do
  erb :"products/index"
end

get "/shop" do
  @products = Product.all
  @product = Product.find_by_id(params[:id]) 
  erb :"/shop"
end

get "/testimonies" do 
  @reviews = Review.all
  @review = Review.find_by_id(params[:id])
  erb :"/testimonies"
end

# Create
post "/testimonies" do
  review = params[:review]
  Review.new(review[:text], review[:username])

  redirect "./testimonies"
end

# New
get "/products/new" do
  erb :"products/new"
end

# Show
get "/products/:id" do
  @product = Product.find_by_id(params[:id])
  erb :"products/show"
end

# Edit
get "/products/:id/edit" do
  @review = Review.find_by_id(params[:id])
  erb :"products/edit"
end

# Update
put "/products/:id" do
  @review = Review.update_by_id(params[:id])
  redirect "/testimonies"
end

# Delete
delete "/products/:id" do
  Review.delete_by_id(params[:id])
  redirect "/testimonies"
end