class Api::V1::AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
    @answer = current_user.answers.build answer_params.merge question_id: params[:question_id]
    if @answer.save!
      render :show, status: :created
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  private

    def answer_params
      params.require(:answer).permit(:body)
    end
end
