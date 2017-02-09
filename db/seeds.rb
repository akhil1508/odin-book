# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#100.times do
# Format: User.create(name: fakenamegenerated, password: abcd1234, password_confirmation: abcd1234, email: fakeemailgenerated)
# end
# got it?
# https://github.com/stympy/faker
# lets read up and come back
# I have no idea
# I only know that such a gem exists
#Yes..But how to generate fakenames and emailss?
#Ok then 
# run once first
# then check in console if the user is creted
# then run a 100 times k?k so go ahead rails db:seed done?Yes it worked #<User id: 5, first_name: "Jonas", last_name: "Nolan", created_at: "2017-02-08 18:28:05", updated_at: "2017-02-08 18:28:05", email: "horacio.volkman@harber.co">]>
30.times do
User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'abcd1234', password_confirmation: 'abcd1234' )
end
#yes its done that worked. now we check in browser and then move on to displaying requests and accepting.
#