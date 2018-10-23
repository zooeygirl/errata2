class AddDayToClassroom < ActiveRecord::Migration
  def change
    add_column :classrooms, :day, :string
    add_column :classrooms, :start_time, :time
  end
end
