require 'minitest/autorun'
require "minitest/reporters"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

require_relative './scrabble'

class ScrabbleTest < MiniTest::Test

  def test_input_is_empty
    game = Scrabble.new
    assert_equal 0, game.score("")
  end

  def test_input_is_nil
    game = Scrabble.new
    assert_equal 0, game.score(nil)
  end

  def test_score_hello
    game = Scrabble.new
    assert_equal 8, game.score("hello")
  end

  def test_score_cabbage
    game = Scrabble.new
    assert_equal 14, game.score("cabbage")
  end

  
end
