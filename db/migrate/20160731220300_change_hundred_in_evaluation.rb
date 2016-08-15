class ChangeHundredInEvaluation < ActiveRecord::Migration
 

  def self.up 
   change_column :evaluations, :hundred, :string 
  end 


def self.down 
<<<<<<< HEAD
   change_column :evaluations, :hundred, 'float USING CAST(column AS float)'
=======
   change_column :evaluations, :hundred, 'float USING CAST(column AS integer)'
>>>>>>> 5d58e31e9bf573fd135e293a38eea03b30f15d5d
  end  

end
