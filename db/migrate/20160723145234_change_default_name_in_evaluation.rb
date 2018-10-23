class ChangeDefaultNameInEvaluation < ActiveRecord::Migration
  def change
  	rename_column :evaluations, :default, :name
  	change_column :evaluations, :name, :string
  end
end
