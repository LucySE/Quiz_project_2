class AddDetailsToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :game_time, :datetime
    add_column :games, :score, :integer
  end
end
