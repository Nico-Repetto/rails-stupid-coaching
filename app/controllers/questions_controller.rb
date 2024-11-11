class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!" ]
    # read question from params and compute instance variable of @answer
    if @question == "I am going to work"
      @answer = @answers.select { |answer| answer == "Great!" }.first
    elsif @question.end_with?("?")
      @answer = @answers.select { |answer| answer == "Silly question, get dressed and go to work!" }.first
    else
      @answer = @answers.select { |answer| answer == "I don't care, get dressed and go to work!" }.first
    end
  end
end
