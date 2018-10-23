class AddLinkToMistake < ActiveRecord::Migration
  def change
    add_column :mistakes, :link, :string
  end
end
