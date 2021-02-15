require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/game'
require './lib/messages'
require './lib/code_maker'
require './lib/code_evaluator'

class GameTest < MiniTest::Test

  def test_it_exists
    game= Game.new()

    assert_instance_of Game, game

  end

  def test_can_initialize_codemaker
    game = Game.new
    game.initialize_codemaker

    #require 'pry'; binding.pry
    assert_equal 4, game.code.length
    assert_equal game.code.join, game.code_string
  end

  def test_can_initialize_messages
    game = Game.new
    game.initialize_messages


    assert_equal Messages, game.messages.class
  end

  def test_can_initialize_code_evaluator_with_attributes
    game = Game.new
    game.initialize_codemaker
    game.initialize_code_evaluator

    assert_equal CodeEvaluator, game.code_evaluator.class
    assert_equal game.code_evaluator.code, game.code
    assert_equal game.code_evaluator.code_string, game.code_string
  end

  def test_start_method_intiiates_all_neccesary_classes
    game = Game.new
    game.start

  assert_equal 4, game.code.length
  assert_equal game.code.join, game.code_string
  assert_equal 1, game.turn_counter
  end

  # def test_start_message_loop
  #   game = Game.new
  #   game.start
  #
  #   assert_equal
  # end
end
