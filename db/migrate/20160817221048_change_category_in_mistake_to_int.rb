class ChangeCategoryInMistakeToInt < ActiveRecord::Migration
  def change

  	change_column :mistakes, :category, 'integer USING CAST(category AS integer)'

  end
end
