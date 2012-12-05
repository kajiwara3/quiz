class QuestionChoice < ActiveRecord::Base
  belongs_to :question
  validates :caption, presence: true
end
