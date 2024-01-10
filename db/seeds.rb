# seed.rb

# Clear existing data
Article.destroy_all

user = User.find_by(email: "mmahsan0312@gmail.com")

# Create articles with associated users
articles_data = [
  {
    title: "Introduction to Ruby on Rails",
    body: "Ruby on Rails is a powerful web development framework that follows the Model-View-Controller (MVC) pattern. It is known for its convention over configuration and aims to make developers more productive by making assumptions about what every developer needs to get started.",
    user: user
  },
  {
    title: "Getting Started with ReactJS",
    body: "ReactJS is a JavaScript library for building user interfaces. It allows developers to create reusable UI components and manage the state of an application efficiently. React is often used in conjunction with other libraries or frameworks, such as Redux, for state management.",
    user: user
  }
]

Article.create(articles_data)

puts 'Seed data has been created.'
