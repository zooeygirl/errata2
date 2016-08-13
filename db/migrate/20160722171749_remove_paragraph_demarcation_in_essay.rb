class RemoveParagraphDemarcationInEssay < ActiveRecord::Migration
  def change
  	rename_column :essays, :paragraph_demarcation, :studentgrade
  	change_column :essays, :studentgrade, :float
  end
end
