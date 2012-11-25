class CreateExaminations < ActiveRecord::Migration
  def change
    create_table :examinations do |t|
      t.string :name
      t.integer :entry_capasity
      t.integer :passing_grade
      t.datetime :start_at
      t.datetime :end_at
      t.timestamps
    end
  end
end
