class AddAssignmentIdToEssay < ActiveRecord::Migration
  def change
    add_column :essays, :assignment_id, :integer
  end
end
