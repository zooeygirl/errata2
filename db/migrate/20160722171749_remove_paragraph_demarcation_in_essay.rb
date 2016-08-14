class RemoveParagraphDemarcationInEssay < ActiveRecord::Migration
  def change
  	rename_column :essays, :paragraph_demarcation, :studentgrade
  	

  	def self.up 
   	change_column :essays, :studentgrade, :string 
  	end 


	def self.down 
   change_column :essays, :studentgrade, 'float USING CAST(column AS integer)'
  	end  

  end
end
