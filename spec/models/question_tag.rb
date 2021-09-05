require "rails_helper"
RSpec.describe QuestionTag, type: :model do

  context "associations" do
    it { should belong_to(:question) }
    it { should belong_to(:tag) }
  end

end
