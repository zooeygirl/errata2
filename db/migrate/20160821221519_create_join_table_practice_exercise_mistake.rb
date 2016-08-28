class CreateJoinTablePracticeExerciseMistake < ActiveRecord::Migration
  def change
  	 create_join_table :practice_exercises, :mistakes do |t|
      # t.index [:practice_exercise_id, :mistake_id]
      # t.index [:mistake_id, :practice_exercise_id]
    end
  end
end
