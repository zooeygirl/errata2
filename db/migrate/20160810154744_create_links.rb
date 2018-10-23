class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :mistake_id
      t.integer :media
      t.string :url
      t.float :rating

      t.timestamps null: false
    end
  end
end
