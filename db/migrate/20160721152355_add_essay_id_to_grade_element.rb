class AddEssayIdToGradeElement < ActiveRecord::Migration
  def change
    add_column :grade_elements, :essay_id, :integer
  end
end
