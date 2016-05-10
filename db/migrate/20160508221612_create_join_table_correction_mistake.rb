class CreateJoinTableCorrectionMistake < ActiveRecord::Migration
  def change
    create_join_table :corrections, :mistakes do |t|
      # t.index [:correction_id, :mistake_id]
      # t.index [:mistake_id, :correction_id]
    end
  end
end
