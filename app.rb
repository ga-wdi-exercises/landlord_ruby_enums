# require_relative "data"
# apartments = data[:apartments]
# tenants = data[:tenants]
#
# # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
#   # Explain how the data is structured
#   # What are the properties for each of the two types of hashes
#
# # Use enumerables to -
#   # Print all the addresses for the apartments
#   addresses = apartments.each do |i|
#     puts i[:address]
#   end
#
#   # Print all the names for tenants
#   names = tenants.each do |i|
#     puts i[:name]
#   end
#   # Print only apartments that are less then 700 in rent
#   apartments.select{|rent|
#     cheap_rent = rent[:monthly_rent] < 700
#     puts cheap_rent
#   }
#   # Print only tenants that are over the age of 44
#   tenants.select{|age|
#     old_tenants = age[:age] > 44
#     puts old_tenants
#   }
#   # # Print only tenants that have an apartment id of 1
#   tenants.select{|id|
#     num_one = id[:id] == 1
#     puts num_one
#   }
#   # Print all the tenants in order from youngest to oldest
#   young_tenants = tenants.sort_by do |age|
#     age[:age]
#   end
#   # Print the names of all the tenants alphabetically
#   names = tenants.sort_by do |name|
#     name[:name]
#   end
#   ## More challenging
#   # When printing tenants also print out the address that the tenant resides in.
#   tenants.each do |tenant|
#     apartment = tenant[:apartment_id]
#     apartments.each do |apt|
#       if apt[:id] == apartment
#         puts "#{tenant[:name]} resides at #{apt[:id]}"
#       end
#     end
#   end
#   # When printing all apartments, under each apartment print all of its tenants
#  apartments.each do |apt|
#    id = apt[:id]
#    tenants.each do |tenant|
#      if tenant[:apartment_id] == id
#        puts "#{tenant[:name} resides at #{apt[:id]}"
end
end
end

puts "Welcome."
def run_app(apartments, tenants)
  print_addresses = apartments.each do |i|
      puts i[:address]
    end
  print_tenant_names = tenants.each do |i|
      puts i[:name]
    end
  apartments.select{|rent|
    cheap_rent = rent[:monthly_rent] < 700
    puts cheap_rent
      }
  tenants.select{|age|
     old_tenants = age[:age] > 44
     puts old_tenants
   }
  tenants.select{|id|
     num_one = id[:id] == 1
     puts num_one
  }
  young_tenants = tenants.sort_by do |age|
      age[:age]
    end
  names = tenants.sort_by do |name|
     name[:name]
    end
  tenants.each do |tenant|
    apartment = tenant[:apartment_id]
    apartments.each do |apt|
      if apt[:id] == apartment
       puts "#{tenant[:name]} resides at #{apt[:id]}"
        end
     end
   end
   apartments.each do |apt|
     id = apt[:id]
     tenants.each do |tenant|
       if tenant[:apartment_id] == id
         puts "#{tenant[:name} resides at #{apt[:id]}"
      end
    end
  end
end
