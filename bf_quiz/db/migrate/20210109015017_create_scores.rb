class CreateScores < ActiveRecord::Migration[6.1]
  def change
    create_table :scores do |t|
      t.integer :user_id
      t.string :puzzle_id
      t.string :time_completed
      t.integer :puzzle_count

      t.timestamps
    end
  end
end
