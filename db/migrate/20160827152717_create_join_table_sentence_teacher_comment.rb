class CreateJoinTableSentenceTeacherComment < ActiveRecord::Migration
  def change
  	 create_join_table :sentences, :teacher_comments do |t|
      # t.index [:sentence_id, :teacher_comment_id]
      # t.index [:teacher_comment_id, :sentence_id]
    end
  end
end
