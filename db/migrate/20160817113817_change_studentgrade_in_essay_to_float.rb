class ChangeStudentgradeInEssayToFloat < ActiveRecord::Migration
  def change

   change_column :essays, :studentgrade, 'float USING CAST(studentgrade AS float)'


  end
end
