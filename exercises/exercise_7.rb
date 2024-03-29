require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store, presence: true

end

class Store < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

end

@store = Store.create(name: 'C', mens_apparel: true, womens_apparel: false)
@employee = @store2.employees.create(hourly_rate: 50)

puts "Store is invalid: #{@store.valid? ? 'true' : @store.errors.full_messages.join("\n")}"

puts "Employee is invalid: #{@employee.valid? ? 'true' : @employee.errors.full_messages.join("\n")}"