class AddVocabularyErrorsToSentence < ActiveRecord::Migration
  def change
    add_column :sentences, :vocabulary_errors, :integer
  end
end
