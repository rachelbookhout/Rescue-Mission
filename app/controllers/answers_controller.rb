class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question_id = @question.id
    @answer.save
    redirect_to @question
  end

 private
    def answer_params
      params.require(:answer).permit(:body)
    end

end
