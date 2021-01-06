require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

new_employee = @store2.employees.create(first_name: "Boing", last_name: "Boing", hourly_rate: 40)

puts '-----------------errors-------------'
puts new_employee.errors.full_messages
puts '----------after errors----------'
# puts @store2.employees.errors.full_messages

pw1 = Employee.find_by(id:1).password
pwBoing = Employee.find_by(first_name: "Boing").password

puts '---------passwords-----------'
puts pw1
puts pwBoing
