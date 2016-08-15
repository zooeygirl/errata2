class AddAssignmentToPracticeExercise < ActiveRecord::Migration
  def change
    add_column :practice_exercises, :assignment, :integer
    add_column :practice_exercises, :mistake_category, :string
  end
end
