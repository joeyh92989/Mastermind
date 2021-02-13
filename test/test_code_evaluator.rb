require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/game'
require './lib/code_evaluator'

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
    correct_position = ['r','b','y','b']
    
    assert_equal 3, code_evaluator.correct_position(correct_position)
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
