class AnswerSheet < ActiveRecord::Base
  belongs_to :user
  belongs_to :examination
  has_many :answers

  def self.total_credits(answer_sheet_id)
    find_by_sql(["select sum(questions.credits) as sum
                  from answers, questions, question_choices
                  where
                  answers.answer_sheet_id = ?
                  and answers.question_id = questions.id
                  and answers.question_choice_id = question_choices.id
                  and question_choices.correct_flag = ?",
                  answer_sheet_id,
                  true]).sum
  end

  def self.create_answer_sheet(examination, user)
    answer_sheet = self.new
    answer_sheet.assign_attributes(user_id: user.id,
                                    examination_id: examination.id)
    answer_sheet.save
    answer_sheet
  end

  def self.conplate_answer_sheet(answer_sheet, total_score)
    success = answer_sheet.examination.passing_grade <= total_score ? true : false
    answer_sheet.assign_attributes(total_score: total_score,
                                    success: success)
    answer_sheet.save
  end
end
