# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Seeds for Users
User.create(name: "John Doe", email: "johndoe@example.com", password: "password")
User.create(name: "Jane Doe", email: "janedoe@example.com", password: "password")

# Seeds for Pets
Pet.create(name: "Fluffy", species: "cat", user_id: 1)
Pet.create(name: "Fido", species: "dog", user_id: 1)
Pet.create(name: "Buddy", species: "dog", user_id: 2)
Pet.create(name: "Whiskers", species: "cat", user_id: 2)
