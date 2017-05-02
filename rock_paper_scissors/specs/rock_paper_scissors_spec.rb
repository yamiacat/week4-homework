require("minitest/autorun")
require("minitest/emoji")
require_relative("../models/rock_paper_scissors.rb")

class TestRockPaperScissors < MiniTest::Test

  def test_horse_gets_error_message
    game = RockPaperScissors.new("horse", "rock")
    error = "Only 'rock', 'paper', and 'scissors' are valid launches!"
    assert_equal(error, game.result)
  end

  def test_paper_beats_rock
    game = RockPaperScissors.new("rock", "paper")
    assert_equal("Player 2 ANNIHILATES Player 1 with paper!", game.result)
  end

  def test_scissors_beats_paper
    game = RockPaperScissors.new("scissors", "paper")
    assert_equal("Player 1 VAPORISES Player 2 with scissors!", game.result)
  end

  def test_rock_beats_scissors
    game = RockPaperScissors.new("scissors", "rock")
    assert_equal("Player 2 ANNIHILATES Player 1 with rock!", game.result)
  end

  def test_draws_draw
    game = RockPaperScissors.new("scissors", "scissors")
    assert_equal("MUTUALLY ASSURED DESTRUCTION! Launch again!", game.result)
  end

end
