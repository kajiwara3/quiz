class CreateAnswerSheets < ActiveRecord::Migration
  def change
    create_table :answer_sheets do |t|
      t.references :user, null: false
      t.references :examination, null: false
      t.integer :total_score
      t.boolean :success, null: false, default: false
      t.datetime :start_at
      t.datetime :end_at
      t.timestamps
    end
  end
end
