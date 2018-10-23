class AddTeacherToEssay < ActiveRecord::Migration
  def change
    add_column :essays, :teacher, :integer
  end
end
