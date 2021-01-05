require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Bobson", last_name: "Twobit", hourly_rate: 60)
@store1.employees.create(first_name: "Zinger", last_name: "Schmitz", hourly_rate: 50)
@store1.employees.create(first_name: "Ida", last_name: "Boomtick", hourly_rate: 40)
@store2.employees.create(first_name: "Dasher", last_name: "McQuade", hourly_rate: 30)
@store2.employees.create(first_name: "Slammer", last_name: "Kaboom", hourly_rate: 20)
@store2.employees.create(first_name: "Bazoo", last_name: "Zapow", hourly_rate: 10)

puts Employee.count
puts Employee.find_by(id: 1).first_name
