require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"
apartments = data[:apartments]
tenants = data[:tenants]
ruby_apartments = []
ruby_tenants = []

#
puts "Hello welcome to this app."
puts "Type '1' to view all of your apartments"
puts "Type '2' to view all of your tenants"
track_number = gets.chomp
if track_number == "1"
  puts apartments
elsif track_number == "2"
  puts tenants
else
  puts "Hello welcome to this app."
  puts "Type '1' to view all of your apartments"
  puts "Type '2' to view all of your tenants"
end
