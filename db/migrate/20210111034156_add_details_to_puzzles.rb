class AddDetailsToPuzzles < ActiveRecord::Migration[6.1]
  def change
    add_column :puzzles, :game_id, :integer
  end
end
