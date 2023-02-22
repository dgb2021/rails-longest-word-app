require "open-uri"

class GamesController < ApplicationController

  def new
    @letters = generate_random
  end

  def score
    @word = params[:word]
    @english_word = english_word?(@word)
  end

  private

  def generate_random
    charset = Array("A".."Z")
    Array.new(10) { charset.sample }.join
  end

  def english_word?(word)
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)
    json['found']
  end
end