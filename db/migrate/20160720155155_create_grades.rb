class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :essay_id

      t.timestamps null: false
    end
  end
end
