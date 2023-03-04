class GamesController < ApplicationController
  def new
    @letters = generate_letters(10)
  end

  def score
    @letters = params[:letters]
    @word = params[:try]
    @score = calculate_score(@letters, @word)
  end

  def calculate_score(letters, word)

    @word.size
  end

  def generate_letters(num)
    ('A'..'Z').to_a.sample(num)
  end
end
