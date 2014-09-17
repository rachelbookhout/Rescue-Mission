class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question_id = @question.id
    @answer.save
     if @question.save == false
      render 'show'
    else
      redirect_to @question
    end
  end

 private
    def answer_params
      params.require(:answer).permit(:body)
    end

end
