class Game
  attr_reader :code,
              :code_string,
              :messages,
              :code_evaluator,
              :turn_counter

  def initialize
    @messages = ()
    @codemaker = ()
    @code_evaluator = ()
    @code = []
    @code_string = ()
    @turn_counter = 1
  end

  def start
    initialize_codemaker
    initialize_messages
    initialize_code_evaluator

    @messages.welcome_msg
    
    input = gets.chomp.downcase
    until (input == 'p') || (input == 'q') || (input == 'i')
      puts 'try again'
      input = gets.chomp.downcase
    end

    if input == 'i'
      @messages.instructions_msg
      input2 = gets.chomp.downcase
      until input2 == 's'
        puts 'try again'
        input2 = gets.chomp.downcase
      end
      if input2 =='s'
        start
      end
    elsif input == 'p'
      turn_start
    elsif input == 'q'
      exit!
    end
  end

  def initialize_codemaker
    @codemaker = CodeMaker.new
    @code = @codemaker.create_code
    @code_string = @codemaker.code_string
  end

  def initialize_messages
    @messages = Messages.new
  end

  def initialize_code_evaluator
    @code_evaluator = CodeEvaluator.new(@code, @code_string)
  end
end
