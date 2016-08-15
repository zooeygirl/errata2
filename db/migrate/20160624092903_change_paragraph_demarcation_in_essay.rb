class ChangeParagraphDemarcationInEssay < ActiveRecord::Migration
  def change
  	change_column :essays, :paragraph_demarcation, :string
  end
end
