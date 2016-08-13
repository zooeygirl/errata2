class CreateTeacherComments < ActiveRecord::Migration
  def change
    create_table :teacher_comments do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
