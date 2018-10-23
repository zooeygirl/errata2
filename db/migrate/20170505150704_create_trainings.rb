class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|

    	t.string :question
    	t.string :answer
      t.text :explanation
      t.integer :mistake_id

      t.timestamps null: false
    end
  end
end
