class AddMistakeIdToWordsInMistake < ActiveRecord::Migration
  def change
    add_column :words_in_mistakes, :mistake_id, :integer
  end
end
