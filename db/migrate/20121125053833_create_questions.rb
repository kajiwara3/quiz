class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :examination, null: false
      t.string :caption, null: false
      t.text :description, null: false
      t.integer :credits
      t.timestamps
    end
  end
end
