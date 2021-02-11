class CodeMaker
  attr_reader :colors,
              :code,
              :code_string
  def initialize
    @colors = ['r','r','r','r','y','y','y','y','b','b','b','b','g','g','g','g']
    @code = []
    @code_string = ""
  end

  def create_code
  @code = @colors.shuffle[0..3]
  end

  def code_string
    @code_string = @code.join
  end
end
