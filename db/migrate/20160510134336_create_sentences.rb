class CreateSentences < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.integer :essay_id

      t.timestamps null: false
    end
  end
end
