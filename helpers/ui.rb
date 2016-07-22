def buffer
  puts "*" * 80
end

def menu
  puts "Please enter a number for a corresponding action or 'exit' to exit the program"
  puts "1) View All Properties"
  puts "2) View all Tenants"
  puts "3) View overview of properties and their tenants"
  gets.chomp
end

def prompt message
  puts message
  gets.chomp
end
