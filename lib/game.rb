class Game
  attr_reader :code,
              :code_string,
              :messages,
              :code_evaluator,
              :turn_counter,
              :start_time
  def initialize
    @messages = ()
    @codemaker = ()
    @code_evaluator = ()
    @code = []
    @code_string = ()
    @turn_counter = 0
    @start_time = ()
    @win_time_minutes= ()
    @win_time_minutes= ()
  end

  def start
    initialize_codemaker
    initialize_messages
    initialize_code_evaluator

    @messages.welcome_msg

    input = gets.chomp.downcase
    until (input == 'p') || (input == 'q') || (input == 'i')
      puts 'Invalid entry'
      input = gets.chomp.downcase
    end

    if input == 'i'
      @messages.instructions_msg
      input2 = gets.chomp.downcase
      until input2 == 's'
        puts 'Invalid entry'
        input2 = gets.chomp.downcase
      end
      if input2 =='s'
        start
      end
    elsif input == 'p'
      first_turn
    elsif input == 'q'
      #exit is a built in ruby method. The exclamation point doesn't require the user to interact
      exit!
    end
  end

  def first_turn
    @messages.start_msg
    input = gets.chomp.downcase
    start_time_create
    turn(input)
  end

  def subsequent_guesses
    input = gets.chomp.downcase
    turn(input)
  end

  def win
    calculate_time_difference
    messages.correct_guess_msg(@code_string, @turn_counter,@win_time_minutes,@win_time_seconds)
    input = gets.chomp.downcase
    until (input == 'p') || (input == 'q')
      puts 'Invalid entry'
      input = gets.chomp.downcase
    end
    if input == 'p'
      start
    elsif input == 'q'
      exit!
    end
  end

def turn(input)
  until (input == 'q') || (input == 'c') || (input.length == 4) do
    if input.size < 4
       @messages.guess_too_short_msg
    else
      @messages.guess_too_long_message
    end
    input = gets.chomp.downcase
  end
    if input == 'c'
      @messages.cheat_msg(@code_string)
      start
    elsif input == 'q'
      start
    elsif input == @code_string
      @turn_counter += 1
      win
    else
      @turn_counter += 1
      message1= @code_evaluator.correct_inclusion(input)
      message2= @code_evaluator.correct_position(input)
      messages.feedback_msg(input, message1, message2, @turn_counter)
      subsequent_guesses
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

  def start_time_create
    @start_time = Time.now
  end

  def calculate_time_difference
    # Time is a class built into ruby
    # Time.at method takes a value input and converts to string based on specified criteria
      time_delta = (Time.now) - @start_time
        converted_time= Time.at(time_delta).utc.strftime("%M:%S").split(":")
        @win_time_minutes = converted_time[0].to_i
        @win_time_seconds = converted_time[1].to_i
  end
end
