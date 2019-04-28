# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Josh = User.create(email:"josh@gmail.com", first_name: "Josh", last_name: "Rees", password_digest: BCrypt::Password.create('Your_Password'), location: "Seattle", interests: "Landscaping, painting, camping")
Sandy = User.create(email:"sandy@gmail.com", first_name: "Sandy", last_name: "Coffee", password_digest: BCrypt::Password.create('chicken_nuggets'), location: "Seattle", interests: "Marketing")
Maggie = User.create(email:"maggie@gmail.com", first_name: "Maggie", last_name: "Computer", password_digest: BCrypt::Password.create('iloveturtles'), location: "Seattle", interests: "Scuba Diving")
Sandra = User.create(email:"sandra@gmail.com", first_name: "Sandra", last_name: "Charger", password_digest: BCrypt::Password.create('ineedtodrinkmorewater'),location: "Seattle", interests: "Retail")






MentorProfile.create(user_id: 1, category_id: 1, description: "I have many years in tax services and I can work with you every week")
MentorProfile.create(user_id: 2, category_id: 2, description: "Arts is my game, sandy is my name, let's make art!")
MentorProfile.create(user_id: 3, category_id: 3, description: "I sale the heck out of cars, let me help you get yours!")
MentorProfile.create(user_id: 4, category_id: 4, description: "I like to bank, let's count money together")

Category.create(name: "Accounting & Tax Services")
Category.create(name: "Arts, Culture & Entertainment")
Category.create(name: "Auto Sales & Service")
Category.create(name: "Banking & Finance")
Category.create(name: "Business Services")
Category.create(name: "Community Organizations")
Category.create(name: "Dentists & Orthodontists")
Category.create(name: "Education")
Category.create(name: "Health & Wellness")
Category.create(name: "Home Improvement")
Category.create(name: "Insurance")
Category.create(name: "Internet & Web Services")
Category.create(name: "Legal Services")
Category.create(name: "Lodging & Travel")
Category.create(name: "Marketing & Advertising")
Category.create(name: "News & Media")
Category.create(name: "Pet Services")
Category.create(name: "Real Estate")
Category.create(name: "Shopping & Retail")
Category.create(name: "Restaurants & Nightlife")
Category.create(name: "Utilities")
Category.create(name: "Wedding, Events, & Meetings")


Conversation.create()

# UserConversation.create(conversation_id: 1, user_id: 1)
# UserConversation.create(conversation_id: 1, user_id: 2)

# Message.create(user_id: 1, conversation_id: 1, body: "Hey")
# Message.create(user_id: 2, conversation_id: 1, body: "Hi")
# Message.create(user_id: 1, conversation_id: 1, body: "What's up?")
# Message.create(user_id: 2, conversation_id: 1, body: "nothing")
# Message.create(user_id: 1, conversation_id: 1, body: "okay")


Mentorship.create(mentor_id: 1, mentee_id: 2, category_id: 1, status: "Accepted")



