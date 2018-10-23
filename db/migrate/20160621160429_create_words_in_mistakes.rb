class CreateWordsInMistakes < ActiveRecord::Migration
  def change
    create_table :words_in_mistakes do |t|

      t.timestamps null: false
    end
  end
end
