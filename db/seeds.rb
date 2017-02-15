require 'Faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
50.times do
# #1
 wiki = Wiki.create!(
    title:  Faker::University.name,
    body:   Faker::LordOfTheRings.location
  )
end

admin = User.create!(
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'

)
admin.skip_confirmation!
admin.save!
# Create an moderator user
standard = User.create!(
  email:    'standard@example.com',
  password: 'helloworld',
  role:     'standard'
)
standard.skip_confirmation!
standard.save!

# Create a member
premium = User.create!(
  email:    'premium@example.com',
  password: 'helloworld',
  role:     'premium'
)
premium.skip_confirmation!
premium.save!

puts "#{Wiki.count} wikis created"
puts "#{User.count} users created"
