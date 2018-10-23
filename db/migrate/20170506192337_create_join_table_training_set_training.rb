class CreateJoinTableTrainingSetTraining < ActiveRecord::Migration
  def change
  	create_join_table :training_sets, :trainings do |t|
      # t.index [:training_set_id, :training_id]
      # t.index [:training_id, :training_set_id]
  end
  end

end




