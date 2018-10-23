class AddDetailsToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :student_list, :integer
  end
end
