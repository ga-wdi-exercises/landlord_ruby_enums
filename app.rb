require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]


tenants = [
  {:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8},
  {:id=>2, :name=>"Maci Hickle II", :age=>28, :apartment_id=>1},
  {:id=>3, :name=>"Jordan Cremin DDS", :age=>54, :apartment_id=>13}
]
apartments = [
  {:id=>1, :address=>"9841 Tanner Key", :monthly_rent=>606, :square_feet=>779},
  {:id=>2, :address=>"6971 Corwin Locks", :monthly_rent=>862, :square_feet=>1444},
  {:id=>3, :address=>"630 McDermott Islands", :monthly_rent=>501, :square_feet=>774}
]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
  apartments.map do |i|
    puts "#{i[:address]}"
  end
  # Print all the names for tenants
  tenants.map do |i|
    puts "#{i[:name]}"
  end
  # Print only apartments that are less then 700 in rent
  apartments.map do |i|
    rent = []
    rent.push("#{i[:monthly_rent]}") 
  end

  # Print only tenants that are over the age of 44
  # Print only tenants that have an apartment id of 1
  # Print all the tenants in order from youngest to oldest
  # Print the names of all the tenants alphabetically

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants
