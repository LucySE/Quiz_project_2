class CreatePuzzles < ActiveRecord::Migration[6.1]
  def change
    create_table :puzzles do |t|
      t.string :question
      t.string :solution
      t.string :clue
      t.string :incorrect_a
      t.string :incorrect_b
      t.string :incorrect_c
      t.string :puzzle_type

      t.timestamps
    end
  end
end
