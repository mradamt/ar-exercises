require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'
require_relative './exercise_8'

puts "Exercise 9"
puts "----------"


# Make sure non-empty stores cannot be destroyed
@store1 = Store.find(1)
if @store1.destroy
  puts "----- Store destroyed! It had #{@store1.employees.size} employees. NOT GOOD"
else
  puts "Could not destroy store :)"
end

# Make sure empty stores can be destroyed
@empty_store = Store.create!(name: 'Test Empty Store', mens_apparel: true, annual_revenue: 0)
if @empty_store.destroy
  puts "Empty Store destroyed! This is good"
else
  puts "Whoa! Empty store should be destroyable... Not cool!"
end