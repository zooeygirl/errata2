class ChangeTeacherTypeInClassrooms < ActiveRecord::Migration
 
def self.up 
   change_column :classrooms, :teacher, :string 
  end 


def self.down 
   change_column :classrooms, :teacher, 'integer USING CAST(column AS integer)'
  end  
  
 
end
