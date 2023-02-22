class GamesController < ApplicationController

  def new
    # display the new grid
    # display a new form
    @letters = generate_random
   
  end

  def score
    # word cannot be built out of the original grid
    # The word is valid according to the grid....but is not valid in ENGLISH
    # The word is both valid accoding to the grid && is an English word
     @user_answer = params[:word]

  end

  private

  def generate_random
    charset = Array("A".."Z")
    Array.new(10) { charset.sample }.join
  end



end

