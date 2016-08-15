class ChangeDefaultInEvaluation < ActiveRecord::Migration


  def self.up 
   change_column :evaluations, :default, :string 
  end 


def self.down 
   change_column :evaluations, :default, 'integer USING CAST(column AS integer)'
  end  



end
