class AddParagraphDemarcationToEssay < ActiveRecord::Migration
  def change
    add_column :essays, :paragraph_demarcation, :integer
  end
end
