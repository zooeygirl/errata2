class ChangeLevelInGradeElement < ActiveRecord::Migration
  def change
  	change_column :grade_elements, :level, :string
  end
end
