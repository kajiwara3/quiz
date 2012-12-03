class Question < ActiveRecord::Base
  belongs_to :examination, dependent: :destroy
  has_many :question_choices, dependent: :destroy
end
