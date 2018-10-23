class AddParagraphIdToSentence < ActiveRecord::Migration
  def change
    add_column :sentences, :paragraph_id, :integer
  end
end
