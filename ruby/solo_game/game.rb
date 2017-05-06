# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.


=begin

Class WordGuess
  *** attributes required ***


  *** initialize statement ***


  *** methods ***
  convert word or phase to "_ _ _ _ _" format

  display "_ _ _ _ _"

  calculate guess limit, based on word length

  Take guess
      evaluate uniqueness
      store guess in guess_array

  Compare letter guess

  Correct: fill in guess

  Incorrect: dock from guess total
      Evaluate if guess limit has been reached


  Determine win
      congratulatory message


  Determine loss
      taunt message




=end




#Driver Code