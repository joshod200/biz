require 'rails_helper'

describe Api::V1::AnswersController, type: :request do

  describe "POST /api/v1/questions/:id/answers" do

    context "with current_user" do

      before do
        user = create(:user)
        question = create(:question, user: user)
        auth_headers = user.create_new_auth_token
        post "/api/v1/questions/#{question.id}/answers",
          params: {
            answer: attributes_for(:answer)
          },
          headers: auth_headers
      end

      it "renders with api/v1/answers/show" do
        expect(response).to render_template(:show)
      end

      it "has status code 201" do
        expect(response).to have_http_status(:created)
      end

    end

    context "without current_user" do

      it "has status code unauthorized" do
        post '/api/v1/questions/1/answers',
          params: {
            answer: attributes_for(:answer)
          }
        expect(response).to have_http_status(:unauthorized)
      end

    end


  end

end
