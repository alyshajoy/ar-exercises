require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_annual_revenue = Store.sum(:annual_revenue)
puts "The total annual revenue of all stores is #{total_annual_revenue}."

average_revenue = Store.average(:annual_revenue).to_i
puts "The average revenue of the stores is #{average_revenue}."

num_of_stores_over_1m = Store.where("annual_revenue > 1000000").count
puts "There are #{num_of_stores_over_1m} stores generating over $1m."