class CreateCorrections < ActiveRecord::Migration
  def change
    create_table :corrections do |t|
      t.integer :essay_id
      t.integer :mistake_id

      t.timestamps null: false
    end
  end
end
