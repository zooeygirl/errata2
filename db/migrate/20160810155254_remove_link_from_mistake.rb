class RemoveLinkFromMistake < ActiveRecord::Migration
  def change
  	remove_column :mistakes, :link
  end
end
