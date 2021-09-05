class Answer < ApplicationRecord
  validates_presence_of :body, :user_id

  belongs_to :user
  belongs_to :question
end
