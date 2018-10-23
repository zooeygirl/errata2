class AddPracticeExerciseIdToPeAnswer < ActiveRecord::Migration
  def change
    add_column :pe_answers, :practice_exercise_id, :integer
  end
end
