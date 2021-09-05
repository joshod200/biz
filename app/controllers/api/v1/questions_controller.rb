class Api::V1::QuestionsController < ApplicationController
  before_action :set_question, only: [:show]

  def index
    @questions = Question.all
    render json: @questions, status: :ok
  end

  def create
    @question = current_user.questions.build question_params
    if @question.save!
      render json: @question, status: :created
    else
      render json: @question.errors, status: :unprocessable_entity
    end
  end

  def show
  end

  private
    def set_question
      @question = Question.includes(:answers, :user).find(params[:id])
    end

    def question_params
      params.require(:question).permit(:title, :body)
    end
end
