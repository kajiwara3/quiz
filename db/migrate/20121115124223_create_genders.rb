class CreateGenders < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.integer :gender_code
      t.string :caption
      t.timestamps
    end
  end
end
