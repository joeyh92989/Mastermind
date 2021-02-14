class CodeEvaluator
  attr_reader :code, :code_string

  def initialize(code, code_string)
    @code = code
    @code_string = code_string
  end

  def correct_position(guess)
    # code takes in an argument of an array and responds with a intenger of the number of correct postions between the two arrays for purposes of providing a response for messsages

    #
    pairs= @code.zip(guess)
    correct_position_count = pairs.select { |pair| pair[0] == pair[1]}.count
  end

  def correct_inclusion(guess)
    intersect = (@code & guess)
    intersect.length
  end
end
