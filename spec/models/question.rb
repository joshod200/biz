require "rails_helper"
RSpec.describe Question, type: :model do

  context "validations" do

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:user_id) }

  end

  context "associations" do
    it { should belong_to(:user) }
    it { should have_many(:answers).dependent(:destroy) }
    it { should have_many(:question_tags).dependent(:destroy) }
    it { should have_many(:tags).through(:question_tags) }
  end

end
