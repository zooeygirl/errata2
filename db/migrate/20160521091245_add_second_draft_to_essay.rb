class AddSecondDraftToEssay < ActiveRecord::Migration
  def change
    add_column :essays, :second_draft, :text
  end
end
