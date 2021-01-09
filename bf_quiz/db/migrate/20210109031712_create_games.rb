class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.boolean :status
      t.integer :user_id
      t.integer :puzzle_id

      t.timestamps
    end
  end
end
