require 'database_cleaner'

DatabaseCleaner.clean_with :truncation

def create_user(email = Faker::Internet.email, username = Faker::Internet.user_name,
  lastName = Faker::Name.last_name, firstName = Faker::Name.first_name, description = Faker::Hipster.paragraph(3),
  web = Faker::Internet.url)
  pwd = '12345678'
  puts "    #{username}"
  User.create!(username: username, email: email, password: pwd, password_confirmation: pwd, firstName: firstName, lastName: lastName, description: description, web: web)
end

def create_project(name = Faker::StarWars.planet)
  puts "Project - #{name}"
  Project.create! name: name
end

(1..10).each do
  create_user
end

t1 = Team.create! name:"Delta"
t2 = Team.create! name:"Bravo"

User.all.each_with_index do |user, i|
  if i%2 == 0
    t1.users << user
  else
    t2.users << user
  end
end

puts "Team1   ---   #{t1.name}", t1.users.pluck(:username)
puts "Team2   ---   #{t2.name}", t2.users.pluck(:username)

projects = 20

(1..projects*3).each do
  MyAsset.create! name: Faker::Hipster.word
end

  assets = MyAsset.all.to_a

(1..projects).each do
  project = create_project
  3.times do; project.my_assets << assets.pop; end
end

Project.all.each_with_index do |project, i|
  if i%2 == 0
    t1.projects << project
  else
    t2.projects << project
  end
end
