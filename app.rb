require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

# Using the .each enumerable, loop through the exisiting apartments and tenants arrays we worked with yesterday.
#
# In the loops
#
# create a new instance of a class you've defined
# push that new instance into the corresponding ruby array.
# We can also instead use the .map enumerable to condense the above code that uses .each.
#{:id=>1, :address=>"9841 Tanner Key", :monthly_rent=>606, :square_feet=>779},
apartments.each { |o|
    apt=Apartment.new o[:id], o[:address],o[:monthly_rent],o[:square_feet]
    ruby_apartments.push(apt)
}
ruby_apartments.each {|o| puts o.address}
#{:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8},
tenants.each {|o|
    ten=Tenant.new o[:id], o[:name],o[:age],o[:apartment_id]
    ruby_tenants.push(ten)
}
ruby_tenants.each {|o| puts o.name}

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# Explain how the data is structured
# Apartments is an array of hashes. It has the following keys  id,address,monthly_rent, square_feet
# Tenants is an array of hashes.  It has the following key id,name,age,apartment_id
# What are the properties for each of the two types of hashes
# properties of Apartments = id,address,monthly_rent, square_feet
# properties of Tenants  = id,name,age,apartment_id

# Use enumerables to -
# Print all the addresses for the apartments
## puts "All Apartment Addresses"
## apartments.each_entry{ |o| puts o[:address] }

# Print all the names for tenants
## puts "All names for Tenants"
## tenants.each_entry{ |o| puts o[:name]}

# Print only apartments that are less then 700 in rent
##puts "apartments that are less then 700 in rent"
##puts apartments.select{ |o|  o[:square_feet] < 700 }

# Print only tenants that are over the age of 44
## puts "Print only tenants that are over the age of 44"
## ff= tenants.select{ |o|  o[:age] > 44 }

# Print only tenants that have an apartment id of 1

## puts "Print only tenants that have an apartment id of 1"
## ff= tenants.select{ |o|  o[:apartment_id] ==1 }

# Print all the tenants in order from youngest to oldest
## puts "all the tenants in order from youngest to oldest"
## ff= tenants.sort_by{ |o| o[:age]}
## ff.length
## ff.each { |o| puts "#{o[:age]} #{o[:name]}" }


# Print the names of all the tenants alphabetically

## More challenging
# When printing tenants also print out the address that the tenant resides in.
# When printing all apartments, under each apartment print all of its tenants
#######################################################################
# view_all_apts(apartments)
# Description: view all apartment report
#     Parmeters: apartments
#
#     Return - nil
#######################################################################
def view_all_apts(apartments)
  puts `clear`
  puts "View All Apartments"
  puts
  printf(" %10s  %-30s  %7s   %12s \n\r","ID","Address","Rent","Sq Feet")
  apartments.each_entry{ |o| printf " %10s  %-30s  $%8.2f   %10d \n",
                                     o.id,o.address,o.monthly_rent,
                                    o.square_feet }
  puts

end

#######################################################################
#   view_all_tenants(tenants)
# Description: view all tenants report
#     Parmeters: tenants
#
#     Return - nil
#######################################################################
def   view_all_tenants(tenants)
  puts `clear`
  puts "View All Apartments"
  puts
  printf(" %10s    %-30s  %6s   %10s \n","ID","Name","Age","Apt ID")
  tenants.each_entry{ |o| printf " %10s  %-30s  %8d   %10d \n",
                                     o.id,o.name,o.age,
                                    o.apartment_id }
  puts

end


#######################################################################
# handle_menu
# Description: handle menu number choices
#     Parmeters: menu_itm
#
#     Return - true - exit  false = replay menu
#######################################################################
def handle_menu(menu_item, apartments,tenants)
  case menu_item
  when 1
    view_all_apts(apartments)
    puts("Press [ENTER] to continue")
    gets
    return false
  when 2
    view_all_tenants(tenants)
    puts("Press [ENTER] to continue")
    gets
    return false
  when 99
    return true
  else
    puts("Please type a Valid Menu Item")
    puts("Press [ENTER] to continue")
    gets
    return false
  end #case
end # handle_menu

#######################################################################
# menu
# Description: Display Menu of numeric choices
#     Parmeters:  None
#
#     Return - choice number
#######################################################################
def menu
  puts `clear`
  puts "Bob Pizza Landlord Dashboard"
  puts
  puts
  puts "1 - View all the apartments"
  puts "2 - View all the tenants"
  puts "99 - Exit this App"
  puts
  print "Enter Menu Choice[1..2  99 ]:"
  return gets.chomp.to_i
end # menu

menu_item=0
while true
  menu_item=menu
  # puts menu_item
  if handle_menu(menu_item,ruby_apartments,ruby_tenants)
    break # exit given
  end #if
end
