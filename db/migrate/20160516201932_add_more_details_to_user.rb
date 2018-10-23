class AddMoreDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :teacher, :integer
    add_column :users, :classroom, :integer
  end
end
