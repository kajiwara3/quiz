class Answer < ActiveRecord::Base
  belongs_to :answer_sheet
  belongs_to :question
  belongs_to :question_choice

  def self.commit_answer(answer_sheet_id, question_id, question_choice_id)
    answer = self.new
    answer.assign_attributes(answer_sheet_id: answer_sheet_id,
                            question_id: question_id,
                            question_choice_id: question_choice_id
                            )
    answer.save
  end
end
