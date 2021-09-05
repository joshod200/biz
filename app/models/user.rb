# frozen_string_literal: true

class User < ActiveRecord::Base
  validates_presence_of :name, :email
  has_many :questions, dependent: :destroy
  has_many :answers

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include DeviseTokenAuth::Concerns::User
end
