require 'minitest/autorun'
require 'minitest/pride'
require './lib/code_maker'

class CodeMakerTest < MiniTest::Test


  def test_it_exists
    codemaker = CodeMaker.new()

    assert_instance_of CodeMaker, codemaker
  end

  def test_has_colors_attribute
    codemaker = CodeMaker.new()

    assert_equal ['r','r','r','r','y','y','y','y','b','b','b','b','g','g','g','g'], codemaker.colors
  end

  def test_can_create_code
    codemaker = CodeMaker.new()
    codemaker.create_code
    #require 'pry'; binding.pry
    assert_equal 4, codemaker.code.length
  end

  def test_code_string
    codemaker = CodeMaker.new()
    codemaker.create_code

    assert_equal codemaker.code.join, codemaker.code_string
    #require 'pry'; binding.pry
  end
end
