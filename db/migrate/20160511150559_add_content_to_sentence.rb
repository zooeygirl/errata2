class AddContentToSentence < ActiveRecord::Migration
  def change
    add_column :sentences, :content, :text
  end
end
