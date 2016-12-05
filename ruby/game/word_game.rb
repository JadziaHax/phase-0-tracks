class WordGame
  attr_reader :turns :word
  def initialize(word)
    @word = word
    @turns = word.length + 1
    @guessed = false
    @guessed_list = []
    @word.length.times do
      @feedback << "_"
    end
  end

  def guess=(character)
    @guess = character
  end

  def reduce_turns
    @turns -= 1
  end

  def check_already_guessed
    if !guessed_list.include(@guess)
    guessed_characters << @guess
    false
    else
      guessed_list.include(@guess)
    end
  end

  def check_win
    if @feedback.join = @word
      true
    else
      false
    end
  end

  def check_character_in_word
    @word.include?(@guess)
  end

  def feedback
    if @word.include(@guess)
      @feedback.each_with_index do |item, item_index|
        if item_index == @word.index(@guess)
        item = @guess
        end
      end

      @feedback
    else
      @feedback
  end
end

puts "Provide a word to be guessed!"
  word = gets.chomp

game = WordGame.new(word)

until game.turns == 0
  user_guess = ""
  until game.check_already_guessed = false
    until user_guess.length == 1
      "Please provide a single-character guess."
      user_guess = gets.chomp
    end
    game.guess = user_guess
  end
  p game.feedback
  if game.check_win
    p "Congratulations on guessing the word!"
    break
  end
  game.reduce_turns
end
if game.turns == 0
  p "You couldn't guess #{word}?"



