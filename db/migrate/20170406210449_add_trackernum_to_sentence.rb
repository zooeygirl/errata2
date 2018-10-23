class AddTrackernumToSentence < ActiveRecord::Migration
  def change
    add_column :sentences, :trackernum, :integer
  end
end
