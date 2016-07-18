require 'rubygems'
require 'bundler/setup'

require 'active_support/all'

require 'active_record'
require 'factory_girl'
require 'faker'
require 'database_cleaner'

require './models/employee'
require './models/store'

require './factories/stores_factory'
require './factories/employees_factory'

# Connect to the DB
ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => "db/questions.sqlite3"
)

def table_exists? name
  ActiveRecord::Base.connection.table_exists? name
end

# Recreate the database
ActiveRecord::Migration.suppress_messages do
  require './db/schema.rb'
end


@store1 = FactoryGirl.create :store, name: 'Muskoka', female_employees: 2, male_employees: 1

@employeeA_1 = FactoryGirl.create :senior_female_employee, first_name: 'Linda', last_name: 'Johnson', store: @store1 
@employeeA_2 = FactoryGirl.create :junior_male_employee,   first_name: 'Mark', last_name: 'Macconaheyyy', store: @store1 
@employeeA_3 = FactoryGirl.create :junior_female_employee, first_name: 'Topi', last_name: 'Blazer', store: @store1 

@store2 = FactoryGirl.create :store, name: 'Victoria', female_employees: 5, male_employees: 0

@employeeB_x = FactoryGirl.create :junior_female_employee, first_name: 'Rebecca', last_name: 'Burth', store: @store2 
@employeeB_y = FactoryGirl.create :junior_female_employee, first_name: 'Jane', last_name: 'Doe', store: @store2 
@employeeB_z = FactoryGirl.create :senior_female_employee, first_name: 'Robin', last_name: 'Wright', store: @store2 

@employeeB_y = FactoryGirl.create :junior_female_employee, first_name: 'Galinda', last_name: 'Sharma', store: @store2 
@employeeB_z = FactoryGirl.create :senior_female_employee, first_name: 'Tracey', last_name: 'Gorman', store: @store2 

# NOTE: The following 2 employees DONT HAVE A STORE
@employeeC_a = FactoryGirl.create :senior_male_employee, first_name: 'Gordon', last_name: 'Dordon', store: nil
@employeeC_b = FactoryGirl.create :senior_male_employee, first_name: 'Bart', last_name: 'Pimpson', store: nil


@store3 = FactoryGirl.create :store, name: 'Port Renfrew'


puts @store1.employees.count
average = @store1.employees.average(:hourly_rate)
puts average
@store1.employees.each do | record |
  puts record.first_name
end

puts @employeeB_z.store.name
puts @employeeB_y.store.female_employees

puts "****************************"
empsearch = Employee.where(gender: 'F').where("hourly_rate > 20")
empsearch.each do | found |
  puts found.first_name
end

puts "*****************************"

avg_store_rev = Store.all.average(:annual_revenue)
puts avg_store_rev

puts Store.all
puts Store.all.count
puts "******************************"
@employeeB_y.store = @store3

puts @store3.employees.count
puts @store1.valid?


# like is case insensitive
namefound = Store.where("name like '%mus%'")
namefound = Store.where('name: like '%mus%', search_term)
namefound.each do | store_name |
  puts store_name.name
end





