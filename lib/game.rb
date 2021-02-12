class Game

  attr_reader :code,
              :code_string
  def initialize ()
    @messages = Messages.new
    @codemaker_instance = CodeMaker.new
    intialized_code = @codemaker_instance.create_code
    intialized_code_string = @codemaker_instance.code_string
    @code = intialized_code
    @code_string = intialized_code_string
  end
end
