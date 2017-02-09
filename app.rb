require "pry"
require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

apartments.each do |each_apartment|
  ruby_apartments << Apartment.new(each_apartment[:id],each_apartment[:address],each_apartment[:monthly_rent],each_apartment[:square_feet])
end
tenants.each do |each_tenant|
  ruby_tenants << Tenant.new(each_tenant[:id],each_tenant[:name],each_tenant[:age],each_tenant[:apartment_id])
end
# current_prompt = 0
# app_array = [
#   { :id=>0,
#     :prompt=>"Hello Mr. Pizza. What would you like to do?",
#     :answers=>[
#       ["[1] View all apartments",1,apartments.map{|unit| unit[:address]}],
#       ["[2] View all tenants",2,tenants.map{|peon| peon[:name]}]]
#   },
#   { :id=>1,
#     :prompt=>"Here are your apartments. What would you like to do?",
#     :answers=>[
#       ["[1] View all apartments with tenants",1,apartments.map{|unit| "#{unit[:address]}\n#{tenants.find_all{|peon| peon[:apartment_id]==unit[:id]}.map{|moneybag| moneybag[:name]}.join(", ")}"}],
#       ["[2] Return to main screen",0,""]
#       ]
#   },
#   { :id=>2,
#     :prompt=>"Here are your tenants. What would you like to do?",
#     :answers=>[
#       ["[1] Look up the address of a specific tenant",3,tenants.map{|peon| "#{peon[:id]}. #{peon[:name]}"}],
#       ["[2] Return to main screen",0,""]
#       ]
#   },
#   { :id=>3,
#     :prompt=>"Which tenant would you like to look the address up for?",
#     :answers=>[
#       ["[Please enter the number next to their name.",3,'if response==0;current_prompt=0;end;if response!=0; puts apartments.find{|apartment| apartment[:id] == tenants.find{|peon| peon[:id]==response}[:apartment_id]}[:address];end'],
#       ["[0] Return to main screen",0,""]
#       ]
#   }
# ]
# app_running = true
# while app_running == true do
#   puts app_array[current_prompt][:prompt]
#   # puts app_array[current_prompt][:answers][0][0]
#   # puts app_array[current_prompt][:answers][1][0]
#   app_array[current_prompt][:answers].each_with_index do |answer_array,i|
#     puts answer_array[0]
#   end
#   response = gets.chomp
#   if response == "quit"
#     puts "Goodbye!"
#     app_running = false
#   end
#   response = response.to_i
#   if app_array[current_prompt][:id]==3
#     eval(app_array[current_prompt][:answers][0][2])
#   else
#     puts app_array[current_prompt][:answers][response-1][2]
#     current_prompt = app_array[current_prompt][:answers][response-1][1]
#   end
# end
#
#
#
#
#
# # # First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
# #   # Explain how the data is structured
# #     # We have two arrays of hashes, the first one of units, and the second one containing tenants
# #   # What are the properties for each of the two types of hashes
# #     # apartments - id, address, rent, size
# #     # tenants - id, name, age, which apartment
# #
# # # Use enumerables to -
# #   # Print all the addresses for the apartments
# #   puts apartments.map{|unit| "#{unit[:address]}\n#{tenants.find_all{|peon| peon[:apartment_id]==unit[:id]}.map{|moneybag| moneybag[:name]}.join(", ")}"}
puts ruby_apartments.map{|unit| "#{unit.address}\n#{ruby_tenants.find_all{|peon| peon.apartment_id == unit.id}.map{|moneybag| moneybag.name}.join(", ")}"}
# #   # Print all the names for tenants
# #   puts tenants.map{|peon| "#{peon[:name]}, #{apartments[peon[:apartment_id]][:address]}"}
puts ruby_tenants.map{|peon| "#{peon.name}, #{ruby_apartments[peon.apartment_id].address}"}
# #   # Print only apartments that are less then 700 in rent
# #   puts apartments.find_all{|unit| unit[:monthly_rent] < 700}
puts ruby_apartments.find_all{|unit| unit.monthly_rent<700}
# #   # Print only tenants that are over the age of 44
# #   puts tenants.find_all{|peon| 44<peon[:age]}
puts ruby_tenants.find_all{|peon| 44<peon.age}
# #   # Print only tenants that have an apartment id of 1
# #   puts tenants.find_all{|peon| peon[:apartment_id]==1}
puts ruby_tenants.find_all{|peon| peon.apartment_id==1}
# #   # Print all the tenants in order from youngest to oldest
# #   puts tenants.sort_by{|peon| peon[:age]}
puts ruby_tenants.sort_by{|peon| peon.age}
# #   # Print the names of all the tenants alphabetically
# #   puts tenants.sort_by{|peon| peon[:name]}
puts ruby_tenants.sort_by{|peon| peon.name}
# #
# #   ## More challenging
# #   # When printing tenants also print out the address that the tenant resides in.
# #   # When printing all apartments, under each apartment print all of its tenants
#
binding.pry
