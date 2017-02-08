require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# Use enumerables to -
  # Print all the addresses for the apartments
  # def print_addresses(apartments)
  #   addresses = apartments.map { |apartment| apartment[:address]  }
  #   addresses.each { |address| puts address }
  # end
  #
  # # Print all the names for tenants
  # def print_tenant_names(tenants)
  #   names = tenants.map { |tenant| tenant[:name]  }
  #   names.each { |name| puts name }
  # end
  #
  # # Print only apartments that are less then 700 in rent
  # def print_apartments_under(apartments, price)
  #   deals =  apartments.select { |apartment| apartment[:monthly_rent] < price }
  #   deals.each { |deal| puts deal }
  # end
  #
  # # Print only tenants that are over the age of 44
  # def print_tenants_older_than(tenants, age)
  #   #Kappa
  #   soylent = tenants.select { |tenant| tenant[:age] > age }
  #   soylent.each { |person| puts person  }
  # end
  # # Print only tenants that have an apartment id of 1
  # def tenants_by_apartment_id(tenants, id)
  #   puts tenants.select { |tenant| tenant[:apartment_id] == id  }
  # end
  # # Print all the tenants in order from youngest to oldest
  # def tenants_by_age(tenants)
  #   puts tenants.sort_by { |tenant| tenant[:age]  }
  # end
  # # Print the names of all the tenants alphabetically
  # def tenants_by_name(tenants)
  #   puts tenants.sort_by { |tenant| tenant[:name]  }
  # end

  ##Part 2 methods
  # def show_all_apartments(apartments)
  #   puts "Apartments"
  #   apartments.each { |apartment|
  #     puts "Unit: #{apartment[:id]}, Address: #{apartment[:address]}, Size: #{apartment[:square_feet]}, rent $#{apartment[:monthly_rent]}"
  #   }
  # end
  #
  # def show_all_tenants(tenants)
  #   puts "Tenants"
  #   tenants.each { |tenant|
  #     puts "Name: #{tenant[:name]} Age: #{tenant[:age]} Unit: #{tenant[:apartment_id]}"
  #   }
  # end

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants


# print_addresses(apartments)
# print_tenant_names(tenants)
# print_apartments_under(apartments, 700)
# print_tenants_older_than(tenants, 44)
# tenants_by_apartment_id(tenants, 1)
# tenants_by_age(tenants)
# tenants_by_name(tenants)

##Part Three

def import_apartments(apartments, ruby_apartments)
  apartments.each { |apartment|
    import = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
    ruby_apartments << import
   }
end

def import_tenants(tenants, ruby_tenants)
  tenants.each { |tenant|
    import = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
    ruby_tenants << import
  }
end

def show_apartments
  Apartment.all.each { |apartment|
    puts "Unit: #{apartment.id}, Address: #{apartment.address}, Size: #{apartment.square_feet}, rent $#{apartment.monthly_rent}"
  }
end

def show_all_tenants
  Tenant.all.each { |tenant|
    puts "Name: #{tenant.name} Age: #{tenant.age} Unit: #{tenant.apartment_id}"
  }
end

import_apartments(apartments, ruby_apartments)
import_tenants(tenants, ruby_tenants)

loop {
  puts "Welcome, Bob. Property Management Menu"
  puts "1 - View All Apartments"
  puts "2 - View All Tenets"
  puts "0 - Exit the Program"
  option = gets.chomp.to_i
  break if option == 0
  if option == 1
    show_apartments
  elsif option == 2
    show_all_tenants
  else
    puts "Unrecognized Option: #{option}"
  end
}
