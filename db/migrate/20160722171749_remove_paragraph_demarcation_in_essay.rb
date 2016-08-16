class RemoveParagraphDemarcationInEssay < ActiveRecord::Migration
  def change
  	add_column :essays, :studentgrade, :string
  	

  	def self.up 
   	change_column :essays, :studentgrade, :string 
  	end 


	def self.down 
   change_column :essays, :studentgrade, 'float USING CAST(column AS integer)'
  	end  

  end
end
