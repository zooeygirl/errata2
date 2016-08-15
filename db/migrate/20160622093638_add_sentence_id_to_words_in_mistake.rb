class AddSentenceIdToWordsInMistake < ActiveRecord::Migration
  def change
    add_column :words_in_mistakes, :sentence_id, :integer
  end
end
