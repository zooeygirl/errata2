class AddEssayStatusToEssay < ActiveRecord::Migration
  def change
    add_column :essays, :essay_status, :integer
  end
end
