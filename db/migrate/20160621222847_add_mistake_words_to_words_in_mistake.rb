class AddMistakeWordsToWordsInMistake < ActiveRecord::Migration
  def change
    add_column :words_in_mistakes, :mistake_words, :string
  end
end
