namespace :db do
  task :model_queries => :environment do
    # Sample query: Get the names of the events available and print them out.
    # Always print out a title for your query

    puts("Query 1: Events created by a designed user")
    userd="Mario"#if you want to see other user change it here
    puts("Looking for the events of: "+userd)
    result = Event.joins(:user).where(users: {name: userd}).pluck('events.title')
    puts(result)
    nume=3#if you want to change the id of the searched user you have to change it here
    puts("\rLooking for the events of user with id number: "+String(nume)+". Its name is "+User.find(nume).name)
    result = Event.joins(:user).where(users: {id: nume}).pluck('events.title')
    puts(result)
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")

    puts("Query 2: All users belonging to an organization")
    orga="The good guys"#if you want to see other organization by its name change it here
    nume= 2#if you want to see other organization by its ID change it here
    puts("Looking for all the users that belongs to: "+orga)
    puts("First we show their names:")
    result = Organization.joins(organization_members: (:user)).where(name: orga).pluck('users.name')
    puts(result)
    puts("Then we show their users ID:")
    result = Organization.joins(organization_members: (:user)).where(name: orga).pluck('users.id')
    puts(result)
    puts("\r")
    puts("Now we do the same thing but we are looking by the number of the organization: "+String(nume)+". which is the organization called: "+Organization.find(nume).name)
    puts("First we show their names:")
    result = Organization.joins(organization_members: (:user)).where(id: nume).pluck('users.name')
    puts(result)
    puts("Then we show their users ID:")
    result = Organization.joins(organization_members: (:user)).where(id: nume).pluck('users.id')
    puts(result)
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")

    puts("Query 3: All the public events belonging to an organization")
    orga="The good guys"#if you want to see other organization by its name change it here
    nume= 2#if you want to see other organization by its ID change it here
    o=Organization.where(name: orga)
    o1=Organization.find(o.ids)
    o2=Organization.find(nume)
    puts("\rLooking for all the public events that belongs to: "+orga)
    puts("Event name || ID")
    result1=OrganizationEvent.where(public:true, organization_id:o1[0].id)
    for e in result1
      puts(Event.find(e.event_id).title+" || "+String(e.event_id))
    end
    if result1.length==0
      puts("none")
    end
    puts("\rLooking for all the public events that belongs to the organization ID: "+String(nume)+". Its organization name is: "+o2.name)
    puts("Event name || ID")
    result2=OrganizationEvent.where(public:true, organization_id:o2.id)
    for e in result2
      puts(Event.find(e.event_id).title+" || "+String(e.event_id))
    end
    if result2.length==0
      puts("none")
    end
    puts("EOQ") # End Of Query -- always add this line after a query.

    puts("\r")
    puts("Query 4: All the non public events belonging to an organization")
    orga="The good guys"#if you want to see other organization by its name change it here
    nume= 2#if you want to see other organization by its ID change it here
    o=Organization.where(name: orga)
    o1=Organization.find(o.ids)
    o2=Organization.find(nume)
    puts("\rLooking for all the non public events that belongs to: "+orga)
    puts("Event name || ID")
    result1=OrganizationEvent.where(public:false, organization_id:o1[0].id)
    for e in result1
      puts(Event.find(e.event_id).title+" || "+String(e.event_id))
    end
    if result1.length==0
      puts("none")
    end
    puts("\rLooking for all the non public events that belongs to the organization ID: "+String(nume)+". Its organization name is: "+o2.name)
    puts("Event name || ID")
    result2=OrganizationEvent.where(public:false, organization_id:o2.id)
    for e in result2
      puts(Event.find(e.event_id).title+" || "+String(e.event_id))
    end
    if result2.length==0
      puts("none")
    end
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")


    puts("Query 5: Users invited to an event.")
    eve="Save Peach"#if you want to see other Event by its name change it here
    nume= 3#if you want to see other Event by its ID change it here
    e=Event.where(title: eve)
    e1=Event.find(e.ids)
    e2=Event.find(nume)
    puts("\rLooking for all the users invited to: "+eve+" its owner is "+User.find(e[0].user_id).name)
    puts("User name || ID || Message sent")
    result1=EventInvitation.where(event_id:e1[0].id)
    for ele in result1
      puts(User.find(ele.user_id).name+" || "+ String(ele.user_id) +" || "+ele.message)
    end
    if result1.length==0
      puts("none")
    end
    puts("\rLooking for all the users invited to the event with ID: "+String(nume)+" its owner is "+User.find(e2.user_id).name+" and the name of the event is "+e2.title)
    puts("User name || ID || Message sent")
    result2=EventInvitation.where(event_id:e2.id)
    for ele in result2
      puts(User.find(ele.user_id).name+" || "+ String(ele.user_id) +" || "+ele.message)
    end
    if result2.length==0
      puts("none")
    end
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")

    puts("Query 6: Votes for a certain date in a certain event.")
    eve="Save Peach"#this is the only event with date options
    e=Event.where(title: eve)
    e1=Event.find(e.ids)
    ed=EventDate.where(event_id:e1[0].id)#If you want to change the date you can change the number of the parameter e1[0], for values 0,1 or 2
    puts("We are looking who voted for the date: "+String(ed[0].date)+" for the event "+eve)
    puts("ID || User name")
    result=EventDateVote.where(event_date_id: ed[0].id)
    for er in result
      puts(String(er.user_id)+" || "+User.find(er.user_id).name)
    end
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")

    puts("Query 7: All comments made in a certain event.")
    eve="Save Peach"#if you want to see other Event by its name change it here
    nume= 3#if you want to see other Event by its ID change it here
    e=Event.where(title: eve)
    e1=Event.find(e.ids)
    e2=Event.find(nume)
    ec1=EventComment.where(event_id:e1[0].id)
    ec2=EventComment.where(event_id:e2.id)
    puts("\rLooking for all the comments in the event: "+eve+" its owner is "+User.find(e[0].user_id).name)
    puts("User name || ID || Comment")
    result1=ec1
    for ele in result1
      puts(User.find(ele.user_id).name+" || "+ String(ele.user_id) +" || "+ele.message)
    end
    if result1.length==0
      puts("none")
    end
    puts("\rLooking for all the comments made in the event with ID: "+String(nume)+" its owner is "+User.find(e2.user_id).name+" and the name of the event is "+e2.title)
    puts("User name || ID || Message sent")
    result2=ec2
    for ele in result2
      puts(User.find(ele.user_id).name+" || "+ String(ele.user_id) +" || "+ele.message)
    end
    if result2.length==0
      puts("none")
    end
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")

    puts("Query 8: All comments made by a certain user.")
    usess="Waluigi"#if you want to see other User by its name change it here
    nume= 1#if you want to see other User by its ID change it here
    us1=User.where(name: usess)
    result1=EventComment.where(user_id:us1[0].id)
    result2=EventComment.where(user_id:nume)
    puts("Looking for all the comments made by: "+usess)
    puts("Event ID || Event Name  || Comment")
    for ele in result1
      puts(String(ele.event_id)+" || "+Event.find(ele.event_id).title+" || "+ele.message)
    end
    if result1.length==0
      puts("none")
    end
    puts("Looking for all the comments made by the user ID: "+String(nume)+" which is the user "+User.find(nume).name)
    puts("Event ID || Event Name  || Comment")
    for ele in result2
      puts(String(ele.event_id)+" || "+Event.find(ele.event_id).title+" || "+ele.message)
    end
    if result2.length==0
      puts("none")
    end
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")

    puts("Query 9: All users with organization admin privileges.")
    orga="The good guys"#if you want to see other organization by its name change it here
    nume= 2#if you want to see other organization by its ID change it here
    o=Organization.where(name: orga)
    o1=Organization.find(o.ids)
    o2=Organization.find(nume)
    u1=User.find(o1[0].user_id)
    u2=User.find(o2.user_id)
    puts("The User with admin priviliges in the organization: "+orga+", is the user: "+u1.name+", with user ID: "+String(u1.id))
    puts("The User with admin priviliges in the organization ID: "+String(nume)+", which is the organization "+o2.name+", is the user: "+u2.name+", with user ID: "+String(u2.id))
    puts("EOQ") # End Of Query -- always add this line after a query.
    puts("\r")

    puts("Query 10: All the users with system admin privileges")
    result=User.where(admin:true)
    puts("User ID || User name")
    for ele in result
      puts(String(ele.id)+" || "+ele.name)
    end
  end
    #Event.joins(ticket_types: { tickets: :order }).where(orders: {customer_id: 5}).select(:name).distinct.count
end