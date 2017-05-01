class RockPaperScissors

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end


  def result
    if @player1 == "rock" && @player2 == "paper"
      return "Player 2 wins with paper!"
    elsif @player1 == "paper" && @player2 == "rock"
      return "Player 1 wins with paper!"
    elsif @player1 == "rock" && @player2 == "scissors"
      return "Player 1 wins with rock!"
    elsif @player1 == "scissors" && @player2 == "rock"
      return "Player 2 winds with rock!"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "Player 1 wins with scissors!"
    elsif @player1 == "paper" && @player2 == "scissors"
      return "Player 2 wins with scissors!"
    elsif @player1 == @player2
      return "Draw! Throw again!"
    else
      return "Only 'rock', 'paper', and 'scissors' are valid throws!"
    end


  end

end
