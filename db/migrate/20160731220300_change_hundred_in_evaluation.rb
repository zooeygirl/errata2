class ChangeHundredInEvaluation < ActiveRecord::Migration
  def change
  	change_column :evaluations, :hundred, :float
  end
end
