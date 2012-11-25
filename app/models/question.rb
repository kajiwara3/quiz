class Question < ActiveRecord::Base
  belongs_to :examination
  has_many :question_choices
end
