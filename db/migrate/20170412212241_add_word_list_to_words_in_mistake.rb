class AddWordListToWordsInMistake < ActiveRecord::Migration
  def change
    add_column :words_in_mistakes, :word_list, :string
  end
end
