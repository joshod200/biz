class Question < ApplicationRecord
  validates_presence_of :title, :body, :user_id
  belongs_to :user
  has_many :answers, dependent: :destroy
end
