class Question < ActiveRecord::Base
  belongs_to :examination, dependent: :destroy
  has_many :question_choices, dependent: :destroy
  has_many :answer
  validates :caption, :description, :credits, presence: true
end
