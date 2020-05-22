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

gf1 = Goldfish.create(:user_id => 1, :name => 'Buttercup')
gf2 = Goldfish.create(:user_id => 1, :name => 'Blossom')
gf3 = Goldfish.create(:user_id => 1, :name => 'Bubbles')

gf4 = Goldfish.create(:user_id => 2, :name => 'Fishyano Goldnaldo')
gf5 = Goldfish.create(:user_id => 2, :name => 'Fichael Golden')
gf6 = Goldfish.create(:user_id => 2, :name => 'Gonny Fishkinson')

bubble1 = Bubble.create(:body => 'Hi Guys, thanks for all the support. I would like to share with you guys my training tips for my Powerpuff Girls! 1) you need to add in some sugar. 2) you need to add in some spices 3) you need to add in everything that is nice!', :title => 'Hi Guys, we are the Powerpuff girls!', :user_id => 1)
bubble2 = Bubble.create(:body => 'Thanks for all your support, the girls are doing great right now. I am starting to train them on the training program of Soccer. Hopefully, we can get the girls to start playing soccer together!', :title => 'Excited!!!',:user_id => 1)
bubble3 = Bubble.create(:body => 'Hi everyone! This are to show my boys! they are the Golden trio! 1) boy in all gold is Fishyano Goldnaldo. 2) the boy with the strong arms is Fichael Golden and, last but not least; 3) the boy in roses - Gonny Fishkinson', :title => 'The Golden trio!!!',:user_id => 2)
bubble4 = Bubble.create(:body => 'Yay! Me TOO! i am training my boys to play soccer as well! we can have them play against each other!', :title => 'The Golden trio!!!',:user_id => 2)
commentbub1 = Comment.create(:user_id => 2, :bubble_id => 1, :body => 'YES!! We should have them play together!')
commentbub2 = Comment.create(:user_id => 1, :bubble_id => 3, :body => 'Hi boys, love the names that you have!!')
follow1 = Follow.create(:user_id => 1, :following_user_id => 2)
follow2 = Follow.create(:user_id => 2, :following_user_id => 1)