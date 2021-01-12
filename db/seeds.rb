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
