#####  ###  #  GAME:  WORDGUESS  #  ###  #####



# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.





class WordGuess

  #attribute accessors
  attr_accessor


  #initialization method
  def initialize
    @answer = ""
    @answer_letters = @answer.downcase.chars
    @answer_length = @word_letters.length
    @player2_view = []
    @guessed_letters = []
    @strikes_remaining = 0
    @current_guess = ""
    @is_over = false

    #outcome messages
    @taunt = "Muhahaha, YOU LOSE!"
    @congratulate = "WINNER!!! YOU ARE THE WORDGUESS MASTER!"
  end


  #receive the word from player1, set the strike count
  def player1_word_input
    puts "Player 1: enter the word now:"
    @answer = gets.chomp
    #set the strike count
    @strikes_remaining = (@answer.length*0.75).round
    #convert to downcase and store as an array
    @answer_letters = @answer.downcase.chars
  end


  #player2_view
  def create_player2_view
    @answer_length.times do
    @player2_view << "_"
  end


  def display_player2_view
    @player2_view.join(" ")
  end


  def store_guessed_letter
    @guessed_letters << @current_guess
  end


  def guess
    puts "Player 2: guess a letter:"
    @current_guess = gets.chomp
    if @guessed_letters.index(@current_guess) != nil
      puts "You've already guessed #{@current_guess}, silly!  Guess again."
      guess
    elsif @answer_letters.index(@current_guess) != nil




  end

  def game_status
    if word_letters == player2_view
      @congratulate
    elsif strikes_remaining == -1
      @taunt
      break
    else




end






=begin
  *** attributes required ***


  *** initialize statement ***


  *** methods ***


  Take guess
      evaluate uniqueness
      store guess in guess_array

  Compare letter guess

  Correct: fill in guess

  Incorrect: dock from guess total
      Evaluate if guess limit has been reached



=end




#Driver Code