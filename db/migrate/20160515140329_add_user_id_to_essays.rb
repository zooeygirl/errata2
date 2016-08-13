class AddUserIdToEssays < ActiveRecord::Migration
  def change
    add_column :essays, :user_id, :integer
  end
end
