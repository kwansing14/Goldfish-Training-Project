# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


soccer = Program.create(:name => 'Soccer',
  :duration => '2 days', :cost => 100, :contact_no => '12345678'
)

basketball = Program.create(:name => 'Basketball',
  :duration => '3 days', :cost => 100, :contact_no => '12345678'
)

rubgy = Program.create(:name => 'Rugby',
  :duration => '5 days', :cost => 100, :contact_no => '12345678'
)

tricks = Program.create(:name => 'Tricks',
  :duration => '14 days', :cost => 500, :contact_no => '12345678'
)

enrolsoccer = Programs_User.create(:user_id => 1, :program_id => 1)

enrolbball = Programs_User.create(:user_id => 1, :program_id => 2)

enroltricks = Programs_User.create(:user_id => 1, :program_id => 2)

enroltricks2 = Programs_User.create(:user_id => 2, :program_id => 2)