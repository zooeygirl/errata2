class AddDraftnumToEssay < ActiveRecord::Migration
  def change
    add_column :essays, :draftnum, :integer
    add_column :essays, :trackernum, :integer
  end
end
