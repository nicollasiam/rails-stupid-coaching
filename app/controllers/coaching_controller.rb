class CoachingController < ApplicationController
  def ask
  end

  def answer
    @question = params[:query]
    @answer = ""

    if @question.downcase == "i am going to work right now!"
      @answer = ""
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
