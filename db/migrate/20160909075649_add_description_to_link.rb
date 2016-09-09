class AddDescriptionToLink < ActiveRecord::Migration
  def change
    add_column :links, :description, :string
    add_column :links, :language, :string
  end
end
