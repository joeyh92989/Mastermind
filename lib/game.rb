class Game

  attr_reader :code,
              :code_string,
              :messages
  def initialize ()
    @messages = ()
    @codemaker_instance = ()
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

  def
end
