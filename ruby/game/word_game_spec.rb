require_relative 'word_game'

describe WordGame do
  let(:word_game) { WordGame.new(cat) }

  it "takes stores a word and stores it" do
    expect(word_game.word).to eq "car"
  end

  it "takes sets the turns avaiable equal to character length of provided word" do
    expect(word_game.turns).to eq "4"
  end

  it
end