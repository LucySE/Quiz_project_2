class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.boolean :in_progress
      t.integer :user_id
      

      t.timestamps
    end
  end
end
