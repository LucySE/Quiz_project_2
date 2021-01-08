# Seed data for Users
User.destroy_all

print "Creating users..."

User.create!(
    email: "reece@ga.com",
    password: 'chicken',
    username: 'reece'
)

User.create!(
    email: "lucy@ga.com",
    password: 'chicken',
    username: 'lucy'
)

User.create!(
    email: "brooke@ga.com",
    password: 'chicken',
    username: 'brooke'
)

User.create!(
    email: "manda@ga.com",
    password: 'chicken',
    username: 'manda'
)

puts "Created #{User.count} users."
