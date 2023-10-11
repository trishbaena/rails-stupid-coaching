class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''

    if params[:question].downcase == 'i am going to work'
      @answer = 'Great!'
    elsif params[:question][-1, 1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif params[:question]
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
