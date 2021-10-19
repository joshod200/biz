require 'rails_helper'

describe Api::V1::QuestionsController, type: :request do

  describe "GET /api/v1/questions" do

    let(:size) { 10 }

    before do
      @user = create(:user)
      @questions = create_list(:question, size, user: @user)
      get '/api/v1/questions'
    end

    it 'renders with api/v1/questions/index' do
      expect(response).to render_template(:index)
    end

    it 'has status code 200' do
      expect(response).to have_http_status(:ok)
    end

  end

  describe "POST /api/v1/questions" do

    context "with current_user" do

      before do
        user = create(:user)
        auth_headers = user.create_new_auth_token
        post '/api/v1/questions',
          params: {
            question: attributes_for(:question)
          },
          headers: auth_headers
      end

      it "has status code 201" do
        expect(response).to have_http_status(:created)
      end

    end

    context "without current_user" do

      it "has status code unauthorized" do
        post '/api/v1/questions',
          params: {
            question: attributes_for(:question)
          }
        expect(response).to have_http_status(:unauthorized)
      end

    end


  end

  describe "GET /api/v1/questions/:id" do

    context "question exists" do

      before do
        user = create(:user)
        @question = create(:question, user: user)
        get "/api/v1/questions/#{@question.id}"
      end

      it 'renders with api/v1/questions/show' do
        expect(response).to render_template(:show)
      end

      it "has status code ok" do
        expect(response).to have_http_status(:ok)
      end

    end

    context "question doesn't exist" do

      it "has status not found" do
        get "/api/v1/questions/1"
        expect(response).to have_http_status(:not_found)
      end

    end

  end

end
