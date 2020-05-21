# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


soccer = Program.create(:name => 'Soccer',
  :duration => '2 days', :cost => 100, :contact_no => '12345678', :details => 'By choosing this training program, we will teach your goldfishies how to shoot the balls into the golds! You will get your Fishyano Goldnaldo!'
)

basketball = Program.create(:name => 'Basketball',
  :duration => '3 days', :cost => 100, :contact_no => '12345678', :details => 'By choosing this training program, we will teach your goldfishies how to throw some hoops!'
)

rubgy = Program.create(:name => 'Rugby',
  :duration => '5 days', :cost => 100, :contact_no => '12345678', :details => 'By choosing this training program, we will teach your goldfishies how to do some touchdowns!'
)

tricks = Program.create(:name => 'Tricks',
  :duration => '14 days', :cost => 500, :contact_no => '12345678', :details => 'By choosing this training program, we will teach your your goldfishies to tunnel and a variety of impressive tricks! Be ready to be awe-ed by the Gold-Tricks! hehe'
)

adduser = User.create(:email => 'anyone@email.com', :encrypted_password => '$2a$11$A0SMQ0Vcobv/3gxnzKSfh.88p.1sy7oKHghPR55vcgs3AkEUCWs4W')

adduser1 = User.create(:email => 'anytwo@email.com', :encrypted_password => '$2a$11$A0SMQ0Vcobv/3gxnzKSfh.88p.1sy7oKHghPR55vcgs3AkEUCWs4W')

enrolsoccer = Programs_User.create(:user_id => 1, :program_id => 1)

enrolbball = Programs_User.create(:user_id => 1, :program_id => 2)

enroltricks = Programs_User.create(:user_id => 1, :program_id => 2)

enroltricks2 = Programs_User.create(:user_id => 2, :program_id => 2)