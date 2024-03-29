require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 20)
@store1.employees.create(first_name: 'Jeremy', last_name: 'Huot', hourly_rate: 90)
@store1.employees.create(first_name: 'Jenica', last_name: 'OToole', hourly_rate: 30)
@store1.employees.create(first_name: 'Praneet', last_name: 'Akilla', hourly_rate: 30)
@store1.employees.create(first_name: 'Ivy', last_name: 'Holliday', hourly_rate: 25)
@store1.employees.create(first_name: 'Riva', last_name: 'Anwari', hourly_rate: 40)
@store1.employees.create(first_name: 'Noah', last_name: 'Maddock', hourly_rate: 30)

@store2.employees.create(first_name: 'Kassia', last_name: 'Selinger', hourly_rate: 45)
@store2.employees.create(first_name: 'Kevin', last_name: 'Szydlowski', hourly_rate: 75)
@store2.employees.create(first_name: 'Liam', last_name: 'Amyotte', hourly_rate: 45)
@store2.employees.create(first_name: 'Michael', last_name: 'Roundtree', hourly_rate: 35)
@store2.employees.create(first_name: 'Noel', last_name: 'Banda', hourly_rate: 45)
@store2.employees.create(first_name: 'Miriam', last_name: 'Isaac', hourly_rate: 20)
@store2.employees.create(first_name: 'Mackenzie', last_name: 'Johnson', hourly_rate: 50)