require "sinatra"
require "sinatra/reloader" if development?

require_relative "./controllers/products"

get "/" do
  redirect "/products"
end