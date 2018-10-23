class CreateTAnswers < ActiveRecord::Migration
  def change
    create_table :t_answers do |t|

   
    t.string :answer
    t.integer :user_id
    t.integer :training_id


      t.timestamps null: false
    end
  end
end


