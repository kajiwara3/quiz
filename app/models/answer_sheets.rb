class AnswerSheets < ActiveRecord::Base
  belongs_to :user, :examination
  has_many :answers
end
