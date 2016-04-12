# 
#
#   apartments.map do |flat|
#     puts flat[:address]
#   end
#
#   Print all the names for tenants
#
# tenants.map do |tenant|
#   puts tenant[:name]
# end
#
#   Print only apartments that are less then 700 in rent
#
# puts apartments.select {|apartment| apartment[:monthly_rent] < 700}
#
#   Print only tenants that are over the age of 44
#
# puts tenants.select {|tenant| tenant[:age] > 44}
#
#   Print only tenants that have an apartment id of 1
#
# puts tenants.select {|tenant| tenant[:apartment_id] == 1}
#
#   Print all the tenants in order from youngest to oldest
#
# puts tenants.sort_by {|tenant| tenant[:age]}
#
#   Print the names of all the tenants alphabetically
#
#   puts tenants.sort_by{|tenant| tenant[:name].downcase}
#
#   ## More challenging
#   When printing tenants also print out the address that the tenant resides in.
#
#  but used .select instead of .each to grab the apartment id and then puts-ed the address and the tenant name.
#  tenants.each do |tenant|
#     apartments.select { |apartment| apartment[:id] }
#     puts apartment[:address]
#     puts tenant[:name]
#   end
