class ChangeEvaluationIdInAssignment < ActiveRecord::Migration
  def change
  	rename_column :assignments, :evaluation_id, :evaluation
  end
end
