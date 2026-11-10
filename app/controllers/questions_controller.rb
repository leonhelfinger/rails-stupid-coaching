class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].to_s.strip
    @answer = coach_answer(@question)
  end

  private

  # the 3 answers the coach knows
  def coach_answer(question)
    return "Great!" if question == "I am going to work"
    return "Silly question, get dressed and go to work!" if question.end_with?("?")

    "I don't care, get dressed and go to work!"
  end
end
