class ChangeHundredInEvaluationToFloat < ActiveRecord::Migration

def change
  def self.up 
   change_column :evaluations, :hundred, 'float USING CAST(hundred AS float)'
  end 


end

end
