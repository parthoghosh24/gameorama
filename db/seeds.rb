# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Partho Ghosh", email: "defjam24@gmail.com", password: "secret", password_confirmation: "secret", is_admin: 1, avatar: "http://s3.amazonaws.com/37assets/svn/765-default-avatar.png")
