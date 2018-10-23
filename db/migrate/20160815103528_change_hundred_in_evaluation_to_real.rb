class ChangeHundredInEvaluationToReal < ActiveRecord::Migration
    def self.up 
   change_column :evaluations, :hundred, :string 
  end 


def self.down 
   change_column :evaluations, :hundred, 'real USING CAST(hundred AS real)'
  end  



end
