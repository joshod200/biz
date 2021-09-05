require "rails_helper"
RSpec.describe Tag, type: :model do

  context "validations" do
    it { should validate_presence_of(:name) }
  end

  context "associations" do
    it { should have_many(:question_tags).dependent(:destroy) }
    it { should have_many(:questions).through(:question_tags) }
  end

end
