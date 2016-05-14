# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

user = User.new(email: 'john@doe.com', password: '12345678')
user.confirm!
user.save!
user.add_role :admin

root = Category.create(name: "All")
root.children.create(name: "Real")
root.children.create(name: "Unreal")

20.times do
  Post.create!(title: Faker::Book.title, body: Faker::Hipster.paragraph,
    category_id: (1..3).to_a.sample)
end
