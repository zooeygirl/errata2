class AddCorrectionStatusToWordsInMistake < ActiveRecord::Migration
  def change
    add_column :words_in_mistakes, :correction_status, :integer
  end
end
