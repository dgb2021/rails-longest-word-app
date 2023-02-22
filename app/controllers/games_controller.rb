class GamesController < ApplicationController

  def new
    # display the new grid
    # display a new form
    @letters = generate_random
  end

  def score
    # 
  end

  private

  def generate_random
    charset = Array("A".."Z")
    Array.new(10) { charset.sample }.join
  end



end

