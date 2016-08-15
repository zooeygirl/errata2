class AddWordListToSentence < ActiveRecord::Migration
  def change
    add_column :sentences, :word_list, :string
  end
end
