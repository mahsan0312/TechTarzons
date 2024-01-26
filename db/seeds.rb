# Clear existing data
Article.destroy_all

# Find user by email
user = User.find_by(email: "mmahsan0312@gmail.com")

# Define categories
categories = Category.where(name: ["Technology", "Travel", "Programming"])

# Define articles data
articles_data = [
  {
    title: "Introduction to Ruby on Rails",
    body: "Ruby on Rails is a powerful web development framework that follows the Model-View-Controller (MVC) pattern. It is known for its convention over configuration and aims to make developers more productive by making assumptions about what every developer needs to get started.",
    user: user,
    popularity: :normal,
    paid: false,
    minutes_read: 10,
    category: categories.find_by(name: "Programming")
  },
  {
    title: "Getting Started with ReactJS",
    body: "ReactJS is a JavaScript library for building user interfaces. It allows developers to create reusable UI components and manage the state of an application efficiently. React is often used in conjunction with other libraries or frameworks, such as Redux, for state management.",
    user: user,
    popularity: :popular,
    paid: false,
    minutes_read: 15,
    category: categories.find_by(name: "Technology")
  },
  {
    title: "E-INK DISPLAY COMBINED WITH TACTILE KEYBOARD",
    body: "Even if it has an E-ink display, the Minimal Phone still pretty much works like its digital siblings since it comes with SIM capability, Wi-Fi, and Bluetooth for calling, texting, and essential email functionality, which are all pre-installed. Apps designed to boost productivity, including a calendar, notes, and basic task management, are also included along with an E-book reader and a simple music player. The Minimal Phone revives the joy of click-clack typing too since it features a tactile, QWERTY keyboard, so the users can feel the buttons they are pressing and hear their clicky sounds, just like in the old days.",
    user: user,
    popularity: :normal,
    paid: false,
    minutes_read: 5,
    category: categories.find_by(name: "Travel")
  },
  {
    title: "REDSANDS CAMPERS MOBILE VEHICLE, THE WANDERER",
    body: "RedSands Campers transforms the Toyota Hilux D4D into a two-person 4WD camper and mobile lodging, complete with a queen-sized bed inside the converted pickup truck and a pull-out breakfast bar and dinner table. Named “The Wanderer,” the truck is also equipped with solar panels to power up devices and electronics in the 4WD camper for travelers. RedSands Campers’ new addition to its growing list of vehicles may be more suitable for exploring Australia all year round, as the Toyota Hilux camper is also equipped with air conditioning to fend off the heat.",
    user: user,
    popularity: :popular,
    paid: false,
    minutes_read: 7,
    category: categories.find_by(name: "Travel")
  }
]

# Create articles
articles_data.each do |article_data|
  article = Article.new(article_data.except(:category))
  article.category = article_data[:category]
  article.save!
  puts 'Article has been created.'
end

puts 'Seed data has been created.'
