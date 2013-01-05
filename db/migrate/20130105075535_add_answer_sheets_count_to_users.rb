class AddAnswerSheetsCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :answer_sheets_count,
               :integer, null: false, default: 0
  end
end
