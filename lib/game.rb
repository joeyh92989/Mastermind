class Game

  attr_reader :code,
              :code_string,
              :messages,
              :code_evaluator
  def initialize ()
    @messages = ()
    @codemaker_instance = ()
    @code_evaluator = ()
    @code = []
    @code_string = ()
  end

  def start


  end

  def initialize_codemaker
    @codemaker_instance = CodeMaker.new
    @code = @codemaker_instance.create_code
    @code_string = @codemaker_instance.code_string
  end

  def initialize_messages
    @messages = Messages.new
  end

  def initialize_code_evaluator
    @code_evaluator = CodeEvaluator.new(@code,@code_string)
  end
end
