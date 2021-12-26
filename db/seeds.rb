# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Ivan', email: 'ivan@mail.com')
User.create(name: 'Peter', email: 'peter@mail.com')
User.create(name: 'Maksim', email: 'maxim@mail.com')

Dog.create(name: 'Bim', motto: 'Born to be wild')
Dog.create(name: 'Max', motto: 'Calm as can be')
Dog.create(name: 'Pirat', motto: 'Life of the pawty')
Dog.create(name: 'Mila', motto: 'Miss Indepent')