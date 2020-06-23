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

u1=User.create(name: 'Mario' ,  email: 'mario@nintendo.com' , password:'PrincessPeach'  , location:'sunshine' , admin: true)
u2=User.create(name: 'Luigi' ,  email: 'Luigi@nintendo.com' , password:'PrincessDaisy'  , location:'sunshine' , admin: false)
u3=User.create(name: 'Bowser' ,  email: 'Bowser@nintendo.com' , password:'conquer'  , location:'sunshine' , admin: false)
u4=User.create(name: 'Waluigi' ,  email: 'WAAA@nintendo.com' , password:'TheBest'  , location:'NotSmash' , admin: false)


u1.update_attributes(password: "PrincessPeach")
u2.update_attributes(password:'PrincessDaisy')
u3.update_attributes(password:'conquer')
u4.update_attributes(password:'TheBest')


e1=Event.create(title: 'Save Peach', ubication: 'Bowser castle', description: 'The title explains itself dude', public: true, decition: "Designed", min_vote: 1, start_voting: nil, finish_voting: nil, user:u1)
e2=Event.create(title: 'Save Daisy', ubication: 'Other Bowser castle', description: 'The title explains itself dude', public: true, decition: "Designed", min_vote: 1, start_voting: nil, finish_voting: nil, user:u2)
e3=Event.create(title: 'Cool fire show', ubication: 'Bowser castle backyard', description: 'The title explains itself dude', public: true, decition: "Designed", min_vote: 1, start_voting: nil, finish_voting: nil, user:u3)

o1=Organization.create(name: "The good guys", description: "Jumping brothers desiring to achieve the best italian justice in an absurd world", created_at: nil, updated_at: nil, user: u2)
o2=Organization.create(name: "The cool guys", description: "We have Waluigi", created_at: nil, updated_at: nil, user: u3)

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
ec6=EventComment.create(message:"Luigi noises", user:u2, event:e1)

cc1=CommentComment.create(message:"Wahoo", event_comment:ec1, user:u1)
cc2=CommentComment.create(message:"Wahhh", event_comment:ec1, user:u4)
cc3=CommentComment.create(message:"What is this?", event_comment:ec1, user:u3)
cc4=CommentComment.create(message:"[Italian noises]", event_comment:ec1, user:u1)
cc5=CommentComment.create(message:"Yahooo", event_comment:ec1, user:u1)

cc6=CommentComment.create(message:"Wahoo", event_comment:ec2, user:u1)
cc7=CommentComment.create(message:"Wahhh", event_comment:ec2, user:u4)
cc8=CommentComment.create(message:"What is this?", event_comment:ec2, user:u3)
cc9=CommentComment.create(message:"[Italian noises]", event_comment:ec2, user:u1)
cc10=CommentComment.create(message:"Yahooo", event_comment:ec2, user:u1)

cr1= CommentCommentReport.create(message:"I didn't like what he said", user:u4, comment_comment: cc9)
cr2= CommentCommentReport.create(message:"I didn't like what he said", user:u4, comment_comment: cc4)
cr3= CommentCommentReport.create(message:"I think this is offensive", user:u1, comment_comment: cc2)

oe1=OrganizationEvent.create(event:e1,organization:o1, public:true)
oe2=OrganizationEvent.create(event:e1,organization:o2, public:false)#this was made by waluigi in an attemp to boicot poor Mario
oe3=OrganizationEvent.create(event:e2,organization:o1, public:true)
oe4=OrganizationEvent.create(event:e3,organization:o2, public:false)

or1= OrganizationReport.create(message:"This Organization affects me personally", organization:o1, user:u4)
or2= OrganizationReport.create(message:"This Organization is no longer active (WAHH)", organization:o2, user:u4)








