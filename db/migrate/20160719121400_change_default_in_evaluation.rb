class ChangeDefaultInEvaluation < ActiveRecord::Migration
  def change
  	change_column :evaluations, :default, :integer
  end
end
