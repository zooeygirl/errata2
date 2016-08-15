class CreateJoinTableClassroomPracticeExercise < ActiveRecord::Migration
  def change
  	  create_join_table :classrooms, :practice_exercises do |t|
      # t.index [:classroom_id, :practice_exercise_id]
      # t.index [:practice_exercise_id, :classroom_id]
    end
  end
end
