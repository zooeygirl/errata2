class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.integer :evaluation_id
      t.integer :level
      t.string :name
      t.float :percentage
      t.float :outof

      t.timestamps null: false
    end
  end
end
