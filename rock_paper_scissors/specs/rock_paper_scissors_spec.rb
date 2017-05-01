require("minitest/autorun")
require("minitest/emoji")
require_relative("../models/rock_paper_scissors.rb")

class TestRockPaperScissors < MiniTest::Test

  def test_horse_gets_error_message
    game = RockPaperScissors.new("horse", "rock")
    error = "Only 'rock', 'paper', and 'scissors' are valid throws!"
    assert_equal(error, game.result)
  end

  def test_paper_beats_rock
    game = RockPaperScissors.new("rock", "paper")
    assert_equal("Player 2 wins with paper!", game.result)
  end

  def test_scissors_beats_paper
    game = RockPaperScissors.new("scissors", "paper")
    assert_equal("Player 1 wins with scissors!", game.result)
  end

  def test_rock_beats_scissors
    game = RockPaperScissors.new("scissors", "rock")
    assert_equal("Player 2 winds with rock!", game.result)
  end

  def test_draws_draw
    game = RockPaperScissors.new("scissors", "scissors")
    assert_equal("Draw! Throw again!", game.result)
  end

end
