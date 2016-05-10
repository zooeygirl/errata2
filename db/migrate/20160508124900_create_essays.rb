class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
