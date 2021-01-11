class RenameStatusToInProgressInGames < ActiveRecord::Migration[6.1]
  def change
    rename_column :games, :status, :in_progress
  end
end
