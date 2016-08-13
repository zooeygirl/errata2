class ChangeTeacherTypeInClassrooms < ActiveRecord::Migration
  def change
  	change_column :classrooms, :teacher, :integer
  end
end
