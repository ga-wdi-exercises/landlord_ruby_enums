require 'pry'

require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]
playing = true
until playing ==false
  puts 'Action? 1. Get particular apartment 2. Get particular tenant 3. Get all tenants 4. Get all apartments'
  input = gets.chomp
  input = input.to_i

  while input == 3
    tenants.each do |x|
      puts x
    end
    input = 0
  end

  while input == 4
    apartments.each do |x|
      puts x
    end
    input = 0
  end

  while input == 1
    puts 'Which ID?'
    inp = gets.chomp
    inp = inp.to_i
    apartments.each do |x|
      if inp == x[:id]
        puts x
      end
    end
    input = 0
  end

  while input == 2
    puts 'Which ID?'
    inp = gets.chomp
      inp = inp.to_i
      tenants.each do |x|
        if inp == x[:id]
          puts x
        end
      end
      input = 0
    end

    puts 'keep going? 1=yes 2=no'
    cont = gets.chomp
    cont = cont.to_i
    if cont == 2
      playing = false
    end

end





# apartments.each do |x|
#   puts x[:address]
# end
#
# tenants.each do |x|
#   puts x[:name]
# end
#
# apartments.each do |x|
#   if x[:monthly_rent] < 700
#     puts x
#   end
# end
#
# tenants.each do |x|
#   if x[:age] > 44
#     puts x
#   end
# end
#
# tenants.each do |x|
#   if x[:id] == 1
#     puts x
#   end
# end
#
# sort_tenants = tenants.sort {|a,b| a[:age] <=> b[:age] }
#
# new_sort_tenants = tenants.sort {|a,b| a[:name] <=> b[:name]}
#
# puts 'break'
# puts sort_tenants
#
# puts 'break'
# puts new_sort_tenants
# puts 'break'
#
# tenants.each do |x|
#   puts x[:name]
#   apartments.each do |y|
#     if y[:id] == x[:apartment_id]
#       puts y[:address]
#     end
#   end
# end
#
# apartments.each do |x|
#   puts x[:address]
#   tenants.each do |y|
#     if x[:id] == y[:apartment_id]
#       puts y[:names]
#     end
#   end
# end
#

binding.pry

puts 'program resumes here.'
