# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.delete_all

Todo.create(title: "Prepare your ski bag for tomorrow", done: true)
Todo.create(title: "Buy fruits and vegetables", done: true)
Todo.create(title: "Keep learning React testing and CSS framework", done: false)
Todo.create(title: "Learn Rails Rest API with React Frontend", done: false)

puts "Success: Todos #{Todo.all.count} created"