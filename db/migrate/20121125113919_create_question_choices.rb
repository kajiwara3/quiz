class CreateQuestionChoices < ActiveRecord::Migration
  def change
    create_table :question_choices do |t|
      t.references :question
      t.string :caption, null: false
      t.boolean :correct_flag, default: false
      t.timestamps
    end
  end
end
