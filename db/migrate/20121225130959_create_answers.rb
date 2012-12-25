class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :answer_sheet
      t.references :question
      t.references :question_choice
      t.timestamps
    end
  end
end
