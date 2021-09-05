class Api::V1::AnswersController < ApplicationController
  before_action :set_answer, only: [:show]

  def index
    @answers = Answer.all
    render json: @answers, status: :ok
  end

  def create
    @answer = current_user.answers.build answer_params.merge question_id: params[:question_id]
    if @answer.save!
      render json: @answer, status: :created
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @answer
  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:body)
    end
end
