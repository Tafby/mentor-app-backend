# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Josh = User.create(email:"josh@gmail.com", first_name: "Josh", last_name: "Rees", password_digest: BCrypt::Password.create('1234'), location: "Seattle", interests: "Landscaping, painting, camping", picture: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhMSExITFRIWFRkYFxgYFRgbFhgTGBMWGhYYGBoYHigjGxslHBMVITIhJikrLi4uGyAzODMtNygtLisBCgoKDg0OGxAQGzElICYuLS8tMC4tLy0tMC8tLS0vLS8tLS0tLS8vLS0tLS0tLy0tLS0tLy0tLS0tLS8tLS0tLf/AABEIAL0BCgMBEQACEQEDEQH/xAAcAAEAAgIDAQAAAAAAAAAAAAAABgcEBQEDCAL/xABIEAACAQIDBQMHCAQNBQAAAAABAgADEQQSIQUGEzFBIlFhBxQycYGRoUJSU3KSscHRIzOCkxUWJENUYnOisrPC4fAXJmN00v/EABsBAQACAwEBAAAAAAAAAAAAAAADBAECBQYH/8QAPBEAAgECBAIGBwcDBAMAAAAAAAECAxEEEiExQVETImGBkaEFFHGxwdHwIzJCUnLS4TSCkhUzU/ElNaL/2gAMAwEAAhEDEQA/ALxgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgCAIAgHVicQlNS9R1RBzZiAo9ZMA0P8ecBYnjHKCQW4VXLpzsctj6xAO9978CACMTTe5tameI1/FUuVt1uBbrAOnD78bPZ+GcQKb3AAqq9IEnkFaooVr+BMAkUAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQBAEAQDH2hjEo03qubIiljoSdOgA1JPIAakwDzlvh5QamKc51ubnh0T+qpryDVLG1RyL9m+XmWzCyrkHzuvsbEYx6a0aZswPFrNmo01N9OAUYZgBpbJa/S2ogqYiEHlb15Gyg2rk5x+5eFpUThcNWJxWHsanEJ4dQ1FPpKLheWlgbEDNm1kMsWqcutsTPDTyKdtHe')
Sandy = User.create(email:"sandy@gmail.com", first_name: "Sandy", last_name: "Coffee", password_digest: BCrypt::Password.create('1234'), location: "Seattle", interests: "Marketing", picture: "https://randomuser.me/api/portraits/lego/2.jpg")
Maggie = User.create(email:"maggie@gmail.com", first_name: "Maggie", last_name: "Computer", password_digest: BCrypt::Password.create('1234'), location: "Seattle", interests: "Scuba Diving", picture: "http://www.supiri.com/wp-content/uploads/2009/03/lego-art.jpg")
Sandra = User.create(email:"sandra@gmail.com", first_name: "Sandra", last_name: "Charger", password_digest: BCrypt::Password.create('1234'),location: "Seattle", interests: "Retail", picture: "https://static-cdn.jtvnw.net/jtv_user_pictures/chrisbuildslego-profile_image-5dd8c11e51236f31-300x300.png")


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









