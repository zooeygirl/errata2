class AddUserIdToTeacherComment < ActiveRecord::Migration
  def change
    add_column :teacher_comments, :user_id, :integer
    add_column :teacher_comments, :category, :string
  end
end
