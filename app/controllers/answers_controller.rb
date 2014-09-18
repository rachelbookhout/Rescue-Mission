class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question_id = @question.id
    @answers = Answer.all.order(created_at: :desc).where(question_id:"#{@question.id}")
    if @answer.save == false
    render 'questions/show'
    else
    redirect_to @question
    end
  end

 private
    def answer_params
      params.require(:answer).permit(:body)
    end

end
