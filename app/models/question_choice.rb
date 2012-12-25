class QuestionChoice < ActiveRecord::Base
  belongs_to :question
  has_many :answers
  validates :caption, presence: true
end
