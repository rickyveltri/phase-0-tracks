#####  ###  #  GAME RSPEC  #  ###  #####

#create relative link to game
require_relative 'game'


#create tests
describe WordGuess do
  let(:wordguess) { WordGuess.new("Hangman") }


  #INITIAL SET UP

  it "converts the word to lowercase and stores letters within an array" do
    expect(wordguess.answer_arr).to eq ['h', 'a', 'n', 'g', 'm', 'a', 'n']
  end

  it "creates an 'invisible' player2 array, replacing the characters with '_' " do
    expect(wordguess.create_player2_arr).to eq ['_', '_', '_', '_', '_', '_', '_']
  end

  it "creates a player2 view with the correct number of characters and spaces in between" do
    wordguess.create_player2_arr
    expect(wordguess.update_player2_view).to eq "_ _ _ _ _ _ _"
  end


  #GUESS LOGIC

  it "stores newly guessed letters to guessed_arr" do
    current_guess = "a"
    expect(wordguess.store_guessed_letter).to eq ["a"]
  end

  it "updates the player2_view if current_guess matches any answer_letters" do
    wordguess.current_guess = "a"
    wordguess.store_guessed_letter = ["a"]
    expect(player2_view).to eq "_ a _ _ _ a _"
  end


  #STRIKES
  it "calculates a strike count as 75 percent of the word's length, rounded to the nearest whole number" do
    expect(wordguess.calc_strike_count).to eq 5
  end

  it "subtracts one from strikes_remaining if guess does not match any letter on answer_letters array" do
    wordguess.current_guess = "p"
    wordguess.modify_strike_count
    expect(strikes_remaining).to eq 4
  end



#FINAL
  it "ends the game if strikes_remaining reaches -1" do
    strikes_remaining = -1
    expect(wordguess.isover).to eq true
  end


  it "ends the game if if player2_arr == answer_letters" do
    player2_arr = answer_letters
    expect(wordguess.isover).to eq true
  end


end