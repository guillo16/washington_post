# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'clearing database'
Article.destroy_all
Category.destroy_all

puts 'creating categories'

politics = Category.create(name: 'Politics')
sports = Category.create(name: 'Sports')
tech = Category.create(name: 'Tech')
world = Category.create(name: 'World')
us = Category.create(name: 'Us')

puts 'creating articles'

users = User.all.sample
Article.create(title: "hello how are your", user: users, category: politics)
Article.create(title: "hello how are your", user: users, category: tech)
Article.create(title: "this is the sports news", user: users, category: sports)
Article.create(title: "hello how are your", user: users, category: us)
Article.create(title: "hello how are your", user: users, category: world)
Article.create(title: "hello how are your", user: users, category: politics)
Article.create(title: "hello how are your", user: users, category: tech)
Article.create(title: "this is the sports news", user: users, category: sports)
Article.create(title: "hello how are your", user: users, category: us)
Article.create(title: "hello how are your", user: users, category: world)
Article.create(title: "hello how are your", user: users, category: politics)
Article.create(title: "hello how are your", user: users, category: tech)
Article.create(title: "this is the sports news", user: users, category: sports)
Article.create(title: "hello how are your", user: users, category: us)
Article.create(title: "hello how are your", user: users, category: world)
Article.create(title: "hello how are your", user: users, category: politics)
Article.create(title: "hello how are your", user: users, category: tech)
Article.create(title: "this is the sports news", user: users, category: sports)
Article.create(title: "hello how are your", user: users, category: us)
Article.create(title: "hello how are your", user: users, category: world)
Article.create(title: "hello how are your", user: users, category: politics)
Article.create(title: "hello how are your", user: users, category: tech)
Article.create(title: "this is the sports news", user: users, category: sports)
Article.create(title: "hello how are your", user: users, category: us)
Article.create(title: "hello how are your", user: users, category: world)

puts 'finishing'
