require_relative "data"
require_relative "models/apartment"
require_relative "models/tenant"

apartments = data[:apartments]
tenants = data[:tenants]

ruby_apartments = []
ruby_tenants = []


class Apartment

  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    pick_option()
    # puts "Apartment #{id} has been added"
  end

  def id
    return @id
  end

  def address
    return @address
  end

  def monthly_rent
    return @monthly_rent
  end

  def square_feet
    return @montly_rent
  end

  def pick_option
    return "Please pick an option: type '1' list of apartments; type '2' list of tenants:  type '3' tenants in each apartment;  type '4' tenant addresses"
    option = gets.chomp

    while option != "1" && option !="2"  && option !='3' && option !='4' do
      return "Please pick an option: type '1' list of apartments; type '2' list of tenants;  type '3' tenants in each apartment;  type '4' tenant addresses"
      option = gets.chomp
      return option
    end
  end

    # def option1
   if option == "1"
     ruby_apartments.each do |apartment|
       puts apartment
     end

    # def option2
 elsif option == "2"
   list_of_tenants = ruby_tenants.each do |tenant|
     puts tenant[:name]
   end
   #
   # # def option3
 elsif option == "3"
   ruby_apartments.each do |apartment|
     puts apartment[:addresses]
     tenants_of_apartment = ruby_tenants.select{|tenant| tenant[:apartment_id] == ruby_apartments[:id]}

     tenants_of_apartment.each do |tenant|
       puts "#{tenant[:name]} lives at apartment id# #{apartment[:id]}"
     end
   end

 elsif option == "4"
   ruby_apartments.each do |apartment|
     puts apartment[:addresses]
     tenant_addresses = ruby_tenants.select{|tenant| tenant[:apartment_id] == ruby_apartments[:id]}

     tenant_addresses.each do |tenant|
       puts "#{tenant[:name]}, address: #{apartment[:address]}"
     end
   end

end


  apartments.each do |apartment|
  new_apts = Apartment.new(apartment[:id], apartment[:address], apartment[:monthly_rent], apartment[:square_feet])
  ruby_aparments << new_apts
end

tenants.each do |tenant|
  new_tenants = Tenant.new(tenant[:id], tenant[:name], tenant[:age], tenant[:apartment_id])
  ruby_tenants << new_tenants
end
