require 'minitest/autorun'
require 'minitest/pride'
require '/Users/katherinemcconnell/Turing/1module/Mastermind/lib/game.rb'
require '/Users/katherinemcconnell/Turing/1module/Mastermind/lib/code_evaluator.rb'

class CodeEvaluatorTest < MiniTest::Test

  def test_it_exist
    code_evaluator = CodeEvaluator.new(['r','b','y','g'], "rbyg")

    assert_instance_of CodeEvaluator, code_evaluator
  end

  def test_it_exist_with_attributes
    code_evaluator = CodeEvaluator.new(['r','b','y','g'], "rbyg")

    assert_equal ['r','b','y','g'], code_evaluator.code
    assert_equal "rbyg", code_evaluator.code_string
  end

  def test_correct_position
    code_evaluator = CodeEvaluator.new(['r','b','y','g'], "rbyg")
    correct_position = "rbyb"

    assert_equal 3, code_evaluator.correct_position(correct_position)
  end

  def test_correct_inclusion
    code_evaluator = CodeEvaluator.new(['r','b','y','g'], "rbyg")
    guess = "rbyb"

    assert_equal 3, code_evaluator.correct_inclusion(guess)
  end
end






# # psuedo code
#
# its a class
#
# initialize (code,code_string)
# Attributes
# - Code
# - Code String
#
#
# giving_feedback_for_incorrect_guesses (guess)
# * this must return two integers
#
#  the first integer must indicate guess compare colors independent of index and disregarding correct indexes
#
#  the second integer must indicate guess compare indexes to store code attribute
#
#
# helper_method_to_get_first_integer
#
# helper_method_to_get_second_integer
