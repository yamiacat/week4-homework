class RockPaperScissors

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end


  def result
    if @player1 == "rock" && @player2 == "paper"
      return "Player 2 ANNIHILATES \nPlayer 1 with paper!"
    elsif @player1 == "paper" && @player2 == "rock"
      return "Player 1 VAPORISES \nPlayer 2 with paper!"
    elsif @player1 == "rock" && @player2 == "scissors"
      return "Player 1 VAPORISES \nPlayer 2 with rock!"
    elsif @player1 == "scissors" && @player2 == "rock"
      return "Player 2 ANNIHILATES \nPlayer 1 with rock!"
    elsif @player1 == "scissors" && @player2 == "paper"
      return "Player 1 VAPORISES \nPlayer 2 with scissors!"
    elsif @player1 == "paper" && @player2 == "scissors"
      return "Player 2 ANNIHILATES \nPlayer 1 with scissors!"
    elsif @player1 == @player2
      return "MUTUALLY ASSURED DESTRUCTION! Launch again!"
    else
      return "Only 'rock', 'paper', and 'scissors' are valid launches!"
    end


  end

end
