class ChangeHundredInEvaluationToFloat < ActiveRecord::Migration

  	
  def self.up 
   change_column :evaluations, :hundred, :string 
  end 


def self.down 
   change_column :evaluations, :hundred, 'float USING CAST(column AS float)'
  end  



  	

end
