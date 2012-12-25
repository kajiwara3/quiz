class Answers < ActiveRecord::Base
  belongs_to :answer_sheet, :question, :question_choice
end
