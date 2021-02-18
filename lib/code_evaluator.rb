class CodeEvaluator
  attr_reader :code,
              :code_string

  def initialize(code, code_string)
    @code = code
    @code_string = code_string
  end

  def correct_position(guess)
    # Takes an arg (guess) and splits it into an array
    # it takes the new guess array and creates a nested array pairing each index
    #then counts the number of arrays that match index 0 and index 1
    guess = guess.split("")
    pairs= @code.zip(guess)
    correct_position_count = pairs.select { |pair| pair[0] == pair[1]}.count
  end

  def correct_inclusion(guess)
    guess = guess.split("")
    intersect = (@code & guess)
    intersect.length
  end
end
