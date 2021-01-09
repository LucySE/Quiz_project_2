# Seed data for Users
User.destroy_all

print "Creating users..."

u1=User.create!(
    email: "reece@ga.com",
    password: 'chicken',
    username: 'reece'
)

u2=User.create!(
    email: "lucy@ga.com",
    password: 'chicken',
    username: 'lucy'
)

u3=User.create!(
    email: "brooke@ga.com",
    password: 'chicken',
    username: 'brooke'
)

u4=User.create!(
    email: "manda@ga.com",
    password: 'chicken',
    username: 'manda'
)

puts "Created #{User.count} users."

Puzzle.destroy_all

print "Creating Puzzles"

p1=Puzzle.create!(
  question: "Name 10 body parts that only have 3 letters",
  solution: "Eye, Ear, Hip, Lip, Toe, Rib, Leg, Arm, Jaw, Gum ",
  clue: "There are five in your head and 5 in the rest of your body",
  incorrect_a: " Ten fingers",
  incorrect_b: "Ten Toes",
  incorrect_c: "feet",
  puzzle_type: "Q&A"
)

p2=Puzzle.create!(
  question: "How many letters in the english alphabet?",
  solution: "26",
  clue: "sing the song and count them",
  incorrect_a: "365",
  incorrect_b: "12",
  incorrect_c: "24",
  puzzle_type: "Q&A"

)

puts "Created #{Puzzle.count} users."

Game.destroy_all

puts "Creating GameState.."

g1=Game.create!(
  status: 1,
  user_id: u1.id,
  puzzle_id: p1.id,

)

g2=Game.create!(
  status: 0,
  user_id: u1.id,
  puzzle_id: p2.id
)

puts "Created #{Game.count} users."


Score.destroy_all

print "Creating Scores"

Score.create!(
  user_id: u1.id,
  puzzle_id: p1.id,
  time_completed: "5",
  puzzle_count: 2
)
puts "Created #{Score.count} users."
