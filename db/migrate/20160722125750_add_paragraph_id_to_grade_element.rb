class AddParagraphIdToGradeElement < ActiveRecord::Migration
  def change
    add_column :grade_elements, :paragraph_id, :integer
  end
end
