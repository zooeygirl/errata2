class ChangeHundredInEvaluationToInt < ActiveRecord::Migration
  def change
  	change_column :evaluations, :hundred, 'integer USING CAST(hundred AS integer)' 	

  end
end
