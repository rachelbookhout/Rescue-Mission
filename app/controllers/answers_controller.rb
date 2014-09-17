class AnswersController < ApplicationController
  def create
    @answer = Answer.new(answer_params)
    @question = Question.find(params[:id])
    @answer.question_id = @question.id
    redirect_to_questions
  end

 private
    def answer_params
      params.require(:answer).permit(:body)
    end

end
