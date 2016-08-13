class CreatePeQuestions < ActiveRecord::Migration
  def change
    create_table :pe_questions do |t|
      t.integer :sentence
      t.integer :practice_exercise_id

      t.timestamps null: false
    end
  end
end
