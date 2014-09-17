class QuestionsController < ApplicationController
  def index
  @questions = Question.all.order(updated_at: :desc)
  end

  def show
  @question = Question.find(params[:id])
  @answer = Answer.new
  id = params[:id].to_i
  @answers = Answer.all.where(question_id:"#{id}")
  end

  def edit
  end

  def destroy
  end

  def create
  @question = Question.new(question_params)
  @question.save
    if @question.save == false
      render 'new'
    else
      redirect_to @question
    end
  end

  def new
  @question = Question.new
  end

private
  def question_params
    params.require(:question).permit(:title, :description)
  end

end
