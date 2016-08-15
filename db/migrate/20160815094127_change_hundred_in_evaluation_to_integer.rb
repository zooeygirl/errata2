class ChangeHundredInEvaluationToInteger < ActiveRecord::Migration
 

  def self.up 
   change_column :evaluations, :hundred, :string 
  end 


def self.down 
   change_column :evaluations, :hundred, 'integer USING CAST(column AS integer)'
  end  



end
