require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.find_by(id: 1)
apparel = Store.where(mens_apparel: true, womens_apparel: true)


@store1.name = "Burnababy"

puts @store1.name
puts apparel.count
