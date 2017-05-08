#####  ###  #  GAME:  WORDGUESS  #  ###  #####


=begin

NOTE TO DBC:
Unfortunately, I have gotten super stuck on this exercise after spending a large chunk of time on it.  I will be attending office hours tonight (Monday, May 8) in order to get a better handle on how to better approach this problem.

I'm finding it difficult to:
-- think through the entirety of the program, writing it out as an rspec test
-- understand how granular the methods of the class should be

I'm confident that I'll be able to write out the driver code well once I have the class and rspec doc finalized.


=end


class WordGuess

  #attribute readers and accessors
  attr_reader :answer, :answer_arr, :is_over
  attr_accessor :strikes_remaining, :player2_view, :player2_arr, :current_guess

  #initialization method
  def initialize(answer)
    @answer = answer
    @answer_arr = @answer.downcase.chars
    @player2_view_arr = []
    @player2_view = ""
    @guessed_arr = []
    @strikes_remaining = 0
    @current_guess = ""
    @is_over = false
    #outcome messaging
    @taunt = "Muhahaha, YOU LOSE!"
    @congratulate = "WINNER!!! YOU ARE THE WORDGUESS MASTER!"
  end


  def calc_strike_count
    #calculate initial strike count as 75% of answer length
    @strikes_remaining = (@answer.length*0.75).round
  end


  def create_player2_arr
    #create a player2 array, which will store progress throughout the game
    @answer.length.times do
    @player2_view_arr << "_"
    end
    @player2_view_arr
  end


  def update_player2_view
    #create a string from the player2_view array
    @player2_view = @player2_view_arr.join(" ")
  end


  def guess
    #receive a guess from player 2
    puts "Player 2: guess a letter:"
    @current_guess = gets.chomp
  end


  def store_guessed_letter
    #If letter has been previously guessed, tell the user
    #If letter is a new guess, add to guessed_arr
    if @guessed_arr.include?(@current_guess) == true
      puts "You've already guessed '#{@current_guess}', silly!  Guess again."
    else
    @guessed_arr << @current_guess
    end
  end


  def correct_guess
    #add letter to guessed_arr
    #determine index(es) of letter within answer_arr
    #change player2_view_arr at the same index(es) from '_' to the letter
    #update_player2_view
  end


  def incorrect_guess
    #add letter to guessed_arr
    #subtract 1 from strike count
  end


  def game_won
    if word_letters == player2_view
      @congratulate
      exit
  end


  def game_lost
    if strikes_remaining == -1
      @taunt
      exit
    end

end