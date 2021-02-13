require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/game'
require './lib/messages'
require './lib/code_maker'
#require './lib/evaluator'

class GameTest < MiniTest::Test

  def test_it_exists
    game= Game.new()

    assert_instance_of Game, game

  end
  def test_can_initialize_codemaker
    game =Game.new
    game.initialize_codemaker

    #require 'pry'; binding.pry
    assert_equal 4, game.code.length
    assert_equal game.code.join, game.code_string
  end
  def method_name

  end
end
