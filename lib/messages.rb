class Messages
  def initialize
  end

  def welcome_msg
    print " Welcome to MASTERMIND\n\n\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def instructions_msg
    require "pry"; binding.pry
    print "\n\n\nThe computer will generate a sequence of four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow\nThe objective of the game is to figure out the sequence in the correct order.\nAs you make guesses the computer will provide you with feedback describing:\n\n\nThe number of correct elements in your guess\n\nAND\n\nThe number of correct positions in your guess\n\n\nWhen you guess the computer generated sequence you will be notified with the following message:\n\n\nCongratulations! You have guessed the sequence '_ _ _ _' in _# guesses over _ minutes, _ seconds.\nDo you want to (p)lay again or (q)uit\n\n\nGood Luck!"

  end
end
