require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/code_maker'

class ObjectTest < MiniTest::Test

  def setup
    @object = Object.new
  end

  def test_it_exists_with_attributes
    assert_instance_of Object, @object
    assert_equal 'answer', @object.attribute_method
  end
end
