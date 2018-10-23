class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :mistakes, :sentences do |t|
      # t.index [:mistake_id, :sentence_id]
      # t.index [:sentence_id, :mistake_id]
    end
  end
end
