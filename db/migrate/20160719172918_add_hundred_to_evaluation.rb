class AddHundredToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :hundred, :boolean
  end
end
