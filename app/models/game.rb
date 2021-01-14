class Game < ApplicationRecord
  has_many :puzzles
  belongs_to :user
end
