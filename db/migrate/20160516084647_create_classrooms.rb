class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|

    	t.integer :user_id
    	t.string :teacher
    	t.string :school
    	

      t.timestamps null: false
    end
  end
end
