class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.float :evaluation
      t.string :content
      t.string :comment
      t.integer :essay_id
    end
  end
end
