class AddNameToMistake < ActiveRecord::Migration
  def change
    add_column :mistakes, :name, :string
  end
end
