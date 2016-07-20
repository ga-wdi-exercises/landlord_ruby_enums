require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

apartments = apartments.each do |apt|
tenants = tenants.each do |occ|

print "Input 1 for apartment list, 2 for tenants. Enter 'quit' to exit.\n"

landlord = gets.chomp

if landlord == "1"
  #shows all apartments
  apartments.each do |apt|
    puts apt[:address]
end

puts "press <enter> to continue"

elsif landlord == "2"

  #shows all tenants
  tenants.each do |occ|
    puts occ[:name]
end

puts "press <enter> to continue"

else
  puts "Please enter a 1 or 2 to view property or tenant information, or 'quit' to exit."
end

break if landlord == "quit"

end
end
