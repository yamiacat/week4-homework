require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")
require_relative("models/rock_paper_scissors.rb")


get "/" do
  erb(:home)
end

get "/instructions" do
  erb(:instructions)
end

get "/about" do
  erb(:about)
end


get "/play/:player1/:player2" do
  player1 = params[:player1]
  player2 = params[:player2]
  game = RockPaperScissors.new(player1, player2)
  @game = game.result()
  erb(:result)
end
