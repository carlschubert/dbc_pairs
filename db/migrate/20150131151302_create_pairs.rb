class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.references :cohort
      t.references :first_student
      t.references :second_student

      t.timestamps null: false
    end
  end
end
