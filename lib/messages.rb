class Messages

  def initialize

  end

  def welcome_msg
    print "\n\n\n Welcome to MASTERMIND\n\n\n Would you like to (p)lay, read the (i)nstructions, or (q)uit?\n\n\n"
  end

  def instructions_msg
    print "\n\n\n The computer will generate a sequence of four elements made up of:\n (r)ed, (g)reen, (b)lue, and (y)ellow.\n Each element may be used more than once in the sequence.\n The objective of the game is to figure out the sequence in the correct order.\n As you make guesses the computer will provide you with feedback describing:\n\n\n The number of correct elements in your guess\n\n AND\n\n The number of correct positions in your guess\n\n\n The player may request a '(c)heat' at any time during the game to have the computer generated sequence revealed. The player will then be prompted to go back to the start menu. When you guess the computer generated sequence you will be notified with the following message:\n\n\n Congratulations! You have guessed the sequence '_ _ _ _' in _# guesses over _ minutes, _ seconds.\n\n Do you want to (p)lay again or (q)uit\n\n\n\n Good Luck!\n\n\n Enter (s)tart to go back\n\n\n"
  end

  def start_msg
    print "\n\n\n I have generated a beginner sequence with four elements made up of:(r)ed, \n (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\n What's your guess?\n\n\n"
  end

  def quit_msg
    print "\n\n\n Are you sure you want to (q)uit?\n\n\n"
  end

  def cheat_msg(code_string)
    print "\n\n\n The computer generated sequence is:\n\n\n'#{code_string}'\n\n\n Would you like to (p)lay again, read the (i)nstructions or (q)uit?\n\n\n"
  end

  def guess_too_short_msg
    print "\n\n\n Your guess is too short.\n\n Your guess must be 4 elements.\n\n Each element may be used more than once.\n\n Guess again.\n\n#{}\n\n\n "
  end

  def guess_too_long_message
    print "\n\n\n Your guess is too long.\n\n Your guess must be 4 elements.\n\n Each element may be used more than once.\n\n Guess again.\n\n#{}\n\n\n "
  end

  def feedback_msg(input, message1, message2,turn_counter)
    print "\n\n\n #{input} has #{message1} of the correct elements with #{message2} in the correct positions\n You've guessed #{turn_counter} times \n\n\n "
  end


  def correct_guess_msg(code_string, turn_counter)
    print "\n\n\n Congratulations! You guessed the sequence \n\n\n '#{code_string}' \n\n\n in #{turn_counter} guesses over #{} minutes, #{} seconds. \n\n\n Do you want to (p)lay again or (q)uit? "
  end
end
