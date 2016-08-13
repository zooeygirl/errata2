class ChangeCategoryTypeInMistake < ActiveRecord::Migration
  def change
  	change_column :mistakes, :category, :integer
  end
end
