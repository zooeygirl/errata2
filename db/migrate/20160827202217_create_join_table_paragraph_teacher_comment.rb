class CreateJoinTableParagraphTeacherComment < ActiveRecord::Migration
  def change
  	 create_join_table :paragraphs, :teacher_comments do |t|
      # t.index [:paragraph_id, :teacher_comment_id]
      # t.index [:teacher_comment_id, :paragraph_id]
    end
  end
end
