require_relative 'hangman'

describe Hangman do
  let(:game){Hangman.new}

  it "changes word to all lower case and splits it into array" do
    game.user_word("hi")
    expect(game.user_word("hi")).to eq ["h","i"]
  end

  it "changes letters to dashes" do
    game.underscore_word("mop")
    expect(game.underscore_word("mop")).to eq "---"
  end

  it "tells how many guesses you have" do
    game.counting_guesses("bob")
    expect(game.counting_guesses("bob")).to eq "You have 3 guesses!"
  end

  it "Gueses letter" do
    game.guess_letter("a")
    expect(game.guess_letter("a")).to eq nil
  end
end