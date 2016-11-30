require 'sqlite3'
require 'faker'

database = SQLite3::Database.new("db/robot_manager_development.db")
database.execute("CREATE TABLE robots (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                       name VARCHAR(64),
                                       city VARCHAR(64),
                                       state VARCHAR(64),
                                       department VARCHAR(64))")

puts "creating robots table for development"

100.times do |num|
  database.execute("INSERT INTO robots (name, city, state, department) VALUES (?, ?, ?, ?);", Faker::GameOfThrones.character, Faker::GameOfThrones.city, Faker::Address.state_abbr, Faker::GameOfThrones.house)
end