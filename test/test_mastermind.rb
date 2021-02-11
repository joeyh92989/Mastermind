require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
class MastermindTest < Minitest::Test

  def test_it_exists
    mastermind = Mastermind.new
    assert_instance_of Mastermind, mastermind
  end

  # def test_it_has_welcome_msg_method
  #   skip
  # end
  #
  # def test_it_has_play_command_method
  #   skip
  # end
  #
  # def test_it_has_instructions_command_method
  #   mastermind = Mastermind.new
  #   instruct_msg = ""
  #   assert_equal instruct_msg, mastermind.instructions
  # end
  #
  # def test_it_has_quit_command_method
  # end

end
