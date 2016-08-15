class AddParagraphIdToWordsInMistake < ActiveRecord::Migration
  def change
    add_column :words_in_mistakes, :paragraph_id, :integer
  end
end
