#####  ###  #  GAME RSPEC  #  ###  #####

require_relative 'game'

describe WordGuess do
  let(:word) { WordGuess.new('Hangman') }


  ### STORE DATA ###
  it "stores the word given by player1 on initiation" do
    expect(word).to eq['Hangman']
  end

  it "converts the word to lowercase" do
    expect(word.downcase).to eq ['hangman']
  end

  it "creates the 'invisible' player2 view" do
    expect(word.player2_view).to_eq [_,_,_,_,_,_,_]
  end

  it "stores a guessed letter" do
  end

  it "checks if a current guess matches a previous guess" do
  end

  it "subtracts one from guesses_remaining if the letter_guess matches" do
  end

  it "does not subtract one from guesses_remaining if the letter_guess is a match" do
  end

  it "updates the player2_view if letter_guess matches word_letters" do
  end

  it "displays a taunt if guesses_remaining reaches -1" do
  end










end