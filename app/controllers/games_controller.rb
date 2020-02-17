class GamesController < ApplicationController
  def new
    @alpha = ('a'...'z').to_a
    @letters = []
    10.times { @letters << @alpha.sample }
  end

  def score
    @answer = params[:answer]
    @letters = params[:letters].split
    @answer_array = @answer.split('')
      if @answer_array.each do |l|
        @letters.include?(l)
      end
      @response = "Woohoooo you win !"
    else
      @response = "Loose"

    end
  end
end
