class CreateTrainingSets < ActiveRecord::Migration
  def change
    create_table :training_sets do |t|

    
    t.integer :user_id
    t.integer :essay_id
    t.integer :correct
    t.integer :incorrect
	t.timestamps null: false
    end
  end
end


