class CreateGradeElements < ActiveRecord::Migration
  def change
    create_table :grade_elements do |t|
      t.string :name
      t.integer :grade_id
      t.float :percentage
      t.float :outof
      t.float :teachereval
      t.integer :level

      t.timestamps null: false
    end
  end
end
