class Messages
 
  def initialize
  end

  def welcome_msg
    welcome_message = " Welcome to MASTERMIND\n\n\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    p welcome_message
  end

  # def instructions_msg
  #   print "The computer will generate a sequence of four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow\n\nThe objective of the game is to figure out the sequence in the correct order.\n\nAs you make guesses the computer will provide you with feedback describing:\n\n\nThe number of correct elements included in the guess\n\nAND\n\nThe number of correct positions\n"
  # end
end
