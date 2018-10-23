class ChangeCategoryTypeInMistake < ActiveRecord::Migration
 

  def self.up 
   change_column :mistakes, :category, :string 
  end 


def self.down 
   change_column :mistakes, :category, 'integer USING CAST(column AS integer)'
  end  




end
