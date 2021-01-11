class RemovePuzzleIdFromGames < ActiveRecord::Migration[6.1]
  def change
    remove_column :games, :puzzle_id
  end
end
