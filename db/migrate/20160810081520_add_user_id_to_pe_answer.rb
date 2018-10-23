class AddUserIdToPeAnswer < ActiveRecord::Migration
  def change
    add_column :pe_answers, :user_id, :integer
  end
end
