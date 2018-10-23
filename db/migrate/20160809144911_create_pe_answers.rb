class CreatePeAnswers < ActiveRecord::Migration
  def change
    create_table :pe_answers do |t|
      t.integer :pe_question_id
      t.text :answer
      t.integer :correct

      t.timestamps null: false
    end
  end
end
