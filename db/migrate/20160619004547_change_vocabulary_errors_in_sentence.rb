class ChangeVocabularyErrorsInSentence < ActiveRecord::Migration
  def change
  	change_column :sentences, :vocabulary_errors, :string
  end
end
