require "pry"
require_relative "models/apartment"
require_relative "models/tenant"
require_relative "data"

# array of hashes with 4 symbols: id (int), address (string), monthly_rent (int), square_feet (int)
apartments = data[:apartments]
# array of hashes with 4 symbols, id (int), name (string), age (int), apartment_id (int)
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes

# Use enumerables to -
  # Print all the addresses for the apartments
    # apartments.each do |apt|
    #   puts apt[:address]
    # end
  # Print all the names for tenants
    # tenants.each do |tenant|
    #   puts tenant[:name]
    # end
  # Print only apartments that are less then 700 in rent
    # apartments.each do |apt|
    #   if apt[:monthly_rent] < 700
    #     puts apt
    #   end
    # end
  # Print only tenants that are over the age of 44
    # tenants.each do |tenant|
    #   if tenant[:age] > 44
    #     puts tenant
    #   end
    # end
  # Print only tenants that have an apartment id of 1
    # tenants.each do |tenant|
    #   if tenant[:apartment_id] == 1
    #     puts tenant
    #   end
    # end
  # Print all the tenants in order from youngest to oldest
    # puts tenants.sort_by { |tenant| tenant[:age] }
  # Print the names of all the tenants alphabetically
    # puts tenants.sort_by { |tenant| tenant[:name] }
  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
    # tenants.each do |tenant|
    #   apartments.each do |apartment|
    #     if apartment[:id] == tenant[:apartment_id]
    #       puts tenant
    #       puts apartment[:address]
    #     end
    #   end
    # end
  # When printing all apartments, under each apartment print all of its tenants
    # apartments.each do |apartment|
    #   tenants.each do |tenant|
    #     if apartment[:id] == tenant[:apartment_id]
    #       puts apartment
    #       puts tenant[:name]
    #     end
    #   end
    # end

ruby_apartments = []
ruby_tenants = []

apartments.each do |a|
  ruby_apartments << Apartment.new(a[:id], a[:address], a[:monthly_rent], a[:square_feet])
end

tenants.each do |t|
  ruby_tenants << Tenant.new(t[:id], t[:name], t[:age], t[:apartment_id])
end

def view_all_apartments apartments
  puts table apartments
  puts "Press enter to go back"
  gets
end

# def view_all_apartments ruby_apartments
#
# end

def view_all_tenants tenants
  table tenants
  puts "Press enter to go back"
  gets
end

def view_all_apartments_with_tenants apartments, tenants
  display_all = apartments.each do |a|
    tenants.each do |t|
      if a[:id] == t[:apartment_id]
        a[:tenant_id] = t[:id]
        a[:tenant_name] = t[:name]
        a[:tenant_age] = t[:age]
      end
    end
  end
  table display_all
  puts "Press enter to go back"
  gets
end

# def search_apartments_by_tenant_name
#
# end

# def evict_tenant
#
# end

# def lease_apartment
#
# end

# def add_apartment
#
# end

# def add_tenant
#
# end

menu = [
  {id: 1, option: "view all apartments"},
  {id: 2, option: "view all tenants"},
  {id: 3, option: "view all apartments with occupanying tenants"},
  {id: 4, option: "search for apartment by tenant name"},
  {id: 5, option: "evict tenant"},
  {id: 6, option: "lease apartment"},
  {id: 7, option: "add apartment"},
  {id: 8, option: "add tenant"}
]

def pad text, max
  p = max - text.to_s.length
  " " + text.to_s + (" " * p) + " "
end

def build_row hash, max_array, header
  value_index = header ? 0 : 1
  row = "|"
  hash.each_with_index do |value,i|
    row += pad value[value_index].to_s, max_array[i]
    row += "|"
  end
  row
end

def border array
  output = "+"
  array.each do |num|
    output += ("-" * (num + 2)) + "+"
  end
  output
end

def get_max hash, max_array
  hash.each_with_index do |value,i|
    if max_array.length < i + 1
      max_array.insert(i,0)
    end
    max_array[i] = [max_array[i],value[0].to_s.length,value[1].to_s.length].max
  end
  max_array
end

def table array_of_hashes
  max_array = []
  array_of_hashes.each_with_index do |hash,i|
    max_array = get_max hash, max_array
  end
  puts border max_array
  puts build_row array_of_hashes[0], max_array, true
  puts border max_array
  array_of_hashes.each_with_index do |hash,i|
    puts build_row hash, max_array, false
    puts border max_array
  end
  nil
end

def main menu, apartments, tenants
  input = ""
  until input == "quit"
    puts "APARTMENT MANAGER"
    table menu
    puts "Enter a number or 'quit'"
    input = gets.chomp
    if input.to_i == 1
      view_all_apartments apartments
    elsif input.to_i == 2
      view_all_tenants tenants
    elsif input.to_i == 3
      view_all_apartments_with_tenants apartments, tenants
    elsif input.to_i == 4
    elsif input.to_i == 5
    elsif input.to_i == 6
    elsif input.to_i == 7
    elsif input.to_i == 8
    end
  end
end

main menu, apartments, tenants
binding.pry
puts "done"
