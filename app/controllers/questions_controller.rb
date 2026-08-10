class QuestionsController < ApplicationController
  def ask
  end
  def answer
    # This reads "?question=" out of your web address bar parameters
    @question = params[:question]

     if @question == "I am going to work"
        @answer = "Great!"
     elsif @question.to_s.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
     else
        @answer = "I don't care, get dressed and go to work!"
     end
    end
end
