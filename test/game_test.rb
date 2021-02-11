require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/game'
require './lib/messages'
require './lib/code_maker'
require './lib/'

class GameTest < MiniTest::Test

  def test_it_exists
    game= Game.new()

    assert_instance_of Game, @object
    assert_equal 'answer', @object.attribute_method
  end
end
