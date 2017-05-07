#####  ###  #  GAME RSPEC  #  ###  #####

require_relative 'game'


  ### STORE DATA ###
describe WordGuess do
  let(:word) { WordGuess.new('Hangman') }

  it "stores the word given by player1 on initiation" do
    expect(word).to eq['Hangman']
  end

  it "converts the word to lowercase" do
    expect(word.downcase).to eq ['hangman']
  end

  it "creates the 'invisible' player2_view array" do
    expect(word.player2_view).to_eq ['_', '_', '_', '_', '_', '_', '_']
  end

  it "stores letter_guess to guessed_letters array" do
    expect(guess_letter('a')).to eq
  end

  it "checks if a current guess matches a previous guess" do
  end

  it "subtracts one from strikes_remaining if the letter_guess matches" do
  end

  it "does not subtract one from strikes_remaining if the letter_guess is a match" do
  end

  it "updates the player2_view if letter_guess matches any word_letters" do
  end

  it "displays a taunt if strikes_remaining reaches -1" do
    expect()
  end


#guess, store, compare, act






end


###