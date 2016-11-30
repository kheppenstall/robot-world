require 'sqlite3'

database = SQLite3::Database.new("db/robot_manager_development.db")
database.execute("CREATE TABLE robots (id INTEGER PRIMARY KEY AUTOINCREMENT,
                                       name VARCHAR(64),
                                       city VARCHAR(64),
                                       state VARCHAR(64),
                                       department VARCHAR(64))")

puts "creating robots table for development"

database.execute("INSERT INTO robots (name, city, state, department) VALUES (?, ?, ?, ?);", "C3P0", "Denver", "CO", "Justice")
database.execute("INSERT INTO robots (name, city, state, department) VALUES (?, ?, ?, ?);", "Alfred", "Gotham", "IL", "Mansion")
database.execute("INSERT INTO robots (name, city, state, department) VALUES (?, ?, ?, ?);", "R2D2", "Star Wars", "WI", "Talking")
database.execute("INSERT INTO robots (name, city, state, department) VALUES (?, ?, ?, ?);", "Monte", "Asbury", "UK", "Mysteries")
database.execute("INSERT INTO robots (name, city, state, department) VALUES (?, ?, ?, ?);", "Hermione", "New York", "NY", "Mysteries")