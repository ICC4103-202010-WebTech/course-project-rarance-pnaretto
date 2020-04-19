# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# u1.save
# u2.save
# u3.save
# e1.save
# e2.save
# e3.save
# o1.save
# o2.save

u1=User.create(name: 'Mario' ,  email: 'mario@nintendo.com' , password:'PrincessPeach' , profile_photo:'image.jpg' , location:'sunshine' , admin: true)
u2=User.create(name: 'Luigi' ,  email: 'Luigi@nintendo.com' , password:'PrincessDaisy' , profile_photo:'image.jpg' , location:'sunshine' , admin: false)
u3=User.create(name: 'Bowser' ,  email: 'Bowser@nintendo.com' , password:'conquer' , profile_photo:'image.jpg' , location:'sunshine' , admin: false)
u4=User.create(name: 'Waluigi' ,  email: 'WAAA@nintendo.com' , password:'TheBest' , profile_photo:'image.jpg' , location:'NotSmash' , admin: false)

e1=Event.create(title: 'Save Peach', ubication: 'Bowser castle', description: 'The title explains itself dude', bannerPhoto: 'EpicMarioPhoto.jpg', public: true, decition: "Designed", min_vote: 1, start_voting: nil, finish_voting: nil, user:u1)
e2=Event.create(title: 'Save Daisy', ubication: 'Other Bowser castle', description: 'The title explains itself dude', bannerPhoto: 'EpicLuigiPhoto.jpg', public: true, decition: "Designed", min_vote: 1, start_voting: nil, finish_voting: nil, user:u2)
e3=Event.create(title: 'Cool fire show', ubication: 'Bowser castle backyard', description: 'The title explains itself dude', bannerPhoto: 'EpicMarioPhoto.jpg', public: true, decition: "Designed", min_vote: 1, start_voting: nil, finish_voting: nil, user:u3)

o1=Organization.create(name: "The good guys", description: "Jumping brothers desiring to achieve the best italian justice in an absurd world", banner_photo: "Mario&Luigi.jpg", created_at: nil, updated_at: nil, user: u2)
o2=Organization.create(name: "The cool guys", description: "We have Waluigi", banner_photo: "WaLuigi.jpg", created_at: nil, updated_at: nil, user: u3)

u1o1=OrganizationMember.create(user: u1,organization: o1)
u2o1=OrganizationMember.create(user: u2,organization: o1)
u3o2=OrganizationMember.create(user: u3,organization: o2)
u4o2=OrganizationMember.create(user: u4,organization: o2)

inv11=EventInvitation.create(user:u2, event:e1, message:"Brother come with me")
inv12=EventInvitation.create(user:u4, event:e1, message:"Waluigi this is the time to reedem yourself")
inv21=EventInvitation.create(user:u1, event:e2, message:"Brother come with me(Imagine the cool tone of Luigi saying this)")
inv22=EventInvitation.create(user:u4, event:e2, message:"We are both luigis!")
inv3=EventInvitation.create(user:u4, event:e3, message:"A lot of fire!")

ed=EventDate.create(event:e1, date: "12/3/2020-15:00")
ed2=EventDate.create(event:e1, date: "15/3/2020-15:00")
ed3=EventDate.create(event:e1, date: "18/3/2020-15:00")

ev11=EventDateVote.create(event_date:ed, user:u1)
ev12=EventDateVote.create(event_date:ed2, user:u1)
ev13=EventDateVote.create(event_date:ed3, user:u1)
ev21=EventDateVote.create(event_date:ed, user:u2)
ev22=EventDateVote.create(event_date:ed2, user:u2)
ev3=EventDateVote.create(event_date:ed, user:u4)

ec1=EventComment.create(message:"WaaaaaahhhH", user:u4, event:e1)
ec2=EventComment.create(message:"WaaaaaahhhH(meaning OK)", user:u4, event:e1)
ec3=EventComment.create(message:"WaaaaaahhhH(in a racist tone)", user:u4, event:e2)
ec4=EventComment.create(message:"WaaaaaahhhH(I love fire)", user:u4, event:e3)
ec5=EventComment.create(message:"Itssss eMEEEee Mariooo", user:u1, event:e1)
ec6=EventComment.create(message:"Luigi noises", user:u1, event:e1)


