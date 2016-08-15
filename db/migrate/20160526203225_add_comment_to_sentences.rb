class AddCommentToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :comment, :text
  end
end
