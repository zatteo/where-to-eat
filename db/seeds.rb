# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.create([{
    name: "Les délices du Liban",
    cooking_type: "lebanese",
    price: 10,
    city: "Bordeaux",
    longitude: 40.714,
    latitude: -74.006,
  }, {
    name: "Bistrot",
    cooking_type: "french",
    price: 20,
    city: "Bordeaux",
    longitude: 41.125,
    latitude: -72.152,
  }, {
    name: "Emperor Sushi",
    cooking_type: "sushi",
    price: 10,
    city: "Paris",
    longitude: 42.162,
    latitude: -70.412,
  }
])

Reservation.skip_callbacks = true

Reservation.create([{
    name: "John",
    people: 2,
    date: "2022-09-27 12:00:00",
    token: 'abcd',
    email: "john@example.com",
    restaurant: Restaurant.first,
  }, {
    name: "James",
    people: 4,
    date: "2022-09-28 13:00:00",
    token: 'efgh',
    email: "james@example.com",
    restaurant: Restaurant.second,
  }
])

Reservation.skip_callbacks = false