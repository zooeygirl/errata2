class AddEssayIdToWordsInMistake < ActiveRecord::Migration
  def change
    add_column :words_in_mistakes, :essay_id, :integer
  end
end
