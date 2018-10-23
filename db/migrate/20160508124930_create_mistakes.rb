class CreateMistakes < ActiveRecord::Migration
  def change
    create_table :mistakes do |t|
      t.string :category

      t.timestamps null: false
    end
  end
end
