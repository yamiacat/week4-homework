require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("models/pizza.rb")

# INDEX - READ (all)

get "/pizzas" do
  @pizzas = Pizza.all()
  erb(:index)
end

#NEW - CREATE (get form)
get "/pizzas/new" do
  erb(:new)
end

#CREATE - CREATE (make something)

post "/pizzas" do
  @pizza = Pizza.new(params)
  @pizza.save()
  erb(:create)
end

#SHOW - READ (one)

get "/pizzas/:id" do
  @pizza = Pizza.find(params[:id])
  erb(:show)
end

#EDIT UPDATE (get form)

get "/pizzas/:id/edit" do
  @pizza = Pizza.find(params[:id])
  erb(:edit)
end

#UPDATE UPDATE (make change)

post "/pizzas/:id" do
  # Pizza.find(params[:id])
  @pizza = Pizza.new(params)
  @pizza.update()
  erb(:update)
end

#DESTROY DELETE

post "/pizzas/:id/delete" do
  @pizza = Pizza.find(params[:id])
  @pizza.delete()
  erb(:destroy)
end
