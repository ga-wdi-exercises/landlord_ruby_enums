
# First, Open the data.rb an inspect the data. Identify and write, in comments, the following:
  # Explain how the data is structured
  # What are the properties for each of the two types of hashes


              # ---------------------------------
  require_relative "data"
  apartments = data[:apartments]
  tenants = data[:tenants]
  # Use enumerables to -
              # ENUMERABLES: # each  is an enumerable # users = ["Alice", "Bob", "Carol"] # users.each do |user| #  puts user # end

              # ALL
              # Print all the addresses for the apartments
apartments.each do |apartments|
              # puts apartments                    # {:id=>19, :address=>"72108 Leuschke Greens", :monthly_rent=>661, :square_feet=>967} # {:id=>20, :address=>"4705 Rosenbaum Ville", :monthly_rent=>993, :square_feet=>1168} #   Wed Feb 08 11:50:12 ~/wdi/homework/due_201702090900L/landlord_ruby_no_AR (master *)
              # puts "apartments_address: #{apartments[:address]}"  # [22] pry(main)*   puts "unit Addr: #{apt[:address]}" [22] pry(main)* end unit Addr: 9841 Tanner Key unit Addr: 6971 Corwin Locks
    p    "apartments_address: #{apartments[:address]}"
end
              # Print all the names for tenants


              # SELECT
              # Print only apartments that are less then 700 in rent
  apartments_cheap =  apartments.select do |apartments|
    apartments[:monthly_rent] < 700
      # puts "apartments_cheap: #{apartments[:address]}"
      p     "apartments_cheap:  #{apartments[:address]}"
  end


              # SELECT
              # Print only tenants that are over the age of 44
tenants44 = tenants.select do |tenants44|
  tenants44[:age] > 44
              # puts "tenants_44: #{tenants44[:name]}"
              # puts "tenants_44: #{tenants44[:name][:age]}"
              # puts "tenants_44: #{tenants44[:name]} , #{tenants44[:age]}"
    # puts "tenants_44: name: #{tenants44[:name]} , age: #{tenants44[:age]}"
    p    "tenants_44: name: #{tenants44[:name]} , age: #{tenants44[:age]}"
end

              # SORT
              # Print the names of all the tenants alphabetically
tenants_alpha = tenants.sort do |tenants_alpha|
    # p    "tenants_alpha: name: #{tenants_alpha[:name]}"
end
    p    "tenants_alpha: name: #{tenants_alpha[:name]}"



              # Print only tenants that have an apartment id of 1
              # Print all the tenants in order from youngest to oldest


              ## More challenging
              # When printing tenants also print out the address that the tenants resides in.
              # When printing all apartments, under each apartment print all of its tenants
