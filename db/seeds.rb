a# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

cc_user = User.create({email: "admin@codeclan.com", password: "adminpass", password_confirmation: "adminpass"})
student_user = User.create({email: "student@gmail.com", password: "studentpass", password_confirmation: "studentpass"})

