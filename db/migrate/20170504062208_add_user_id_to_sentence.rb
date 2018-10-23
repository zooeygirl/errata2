class AddUserIdToSentence < ActiveRecord::Migration
  def change
    add_column :sentences, :user_id, :int
  end
end
