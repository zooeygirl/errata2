class CreateAssignment < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.datetime :duedate
      t.integer :wordcountmin
      t.integer :wordcountmax
      t.integer :user_id
      t.integer :classroom_id
      t.integer :evaluation_id
      t.float :classroom_average
    end
  end
end
