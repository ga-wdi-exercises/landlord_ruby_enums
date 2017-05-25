require_relative "data"
apartments = data[:apartments]
tenants = data[:tenants]

# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  #    the data is in 2 arrays containing hashes for apartments and tenants sperately
  # What are the properties for each of the two types of hashes
  #    id,address,monthly_rent,square_feet for apartments
  #    id,name,age,apartment_id for tenants

# Use enumerables to -
  # # Print all the addresses for the apartments
  # apartments.each_with_index do |value, index|
  #   puts " #{value[:address]}"
  # end
  # # Print all the names for tenants
  # tenants.each_with_index do |value, index|
  #   puts " #{value[:name]}"
  # end
  # # Print only apartments that are less then 700 in rent
  # apartments.each_with_index do |value, index|
  #   if value[:monthly_rent] < 700
  #     puts " #{value}"
  #   end
  # end
  # # Print only tenants that are over the age of 44
  # tenants.each_with_index do |value, index|
  #   if value[:age] > 44
  #     puts " #{value}"
  #   end
  # end
  # # Print only tenants that have an apartment id of 1
  # tenants.each_with_index do |value, index|
  #   if value[:apartment_id] == 1
  #     puts " #{value}"
  #   end
  # end
  # # Print all the tenants in order from youngest to oldest
  # puts tenants.sort_by { |x| x[:age] }
  # # Print the names of all the tenants alphabetically
  # puts tenants.sort_by {|x| x[:name]}

  ## More challenging
  # When printing tenants also print out the address that the tenant resides in.
  # When printing all apartments, under each apartment print all of its tenants

class Landlord
  def initialize(one,two)
    @apartments = one
    @tenants = two
  end
  def display
    while 1
      puts ""
      puts "1 to display apartments"
      puts "2 to display tenants"
      puts "3"
      puts "10 Exit"
      input = gets.chomp!
        if ["1","2","3","10"].include? input
          menu_selection input
          break
        else
          puts "Invalid option."
        end
    end
  end

  def menu_selection number
    case number
    when "1"
      @apartments.each do |x|
        puts x
      end
      display
    when "2"
      @tenants.each do |x|
        puts x
      end
      display
    when "3"
      apt_with_tenants
      display
    when ""
    else
      return
    end
  end

  def apt_with_tenants
    @apartments.each_with_index do |value, index|
      puts "#{value}"
        @tenants.each_with_index do |v, i|
          if v[:apartment_id] == value[:id]
            puts "id = #{v[:id]},#{v[:name]},#{v[:age]}, apt-id = #{v[:apartment_id]}"
          end
        end
    end 
  end

end

landlord_app = Landlord.new(apartments,tenants)
landlord_app.display


