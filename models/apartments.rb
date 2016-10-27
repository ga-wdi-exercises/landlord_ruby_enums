# require "pry"

class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet
  @@ruby_apartments = []

    def initialize(id, address, monthly_rent, square_feet)
      @id = id
      @address = address
      @monthly_rent = monthly_rent
      @square_feet = square_feet
      @@ruby_apartments.push(self)
    end

    def Apartment.view_all_apartments
      @@ruby_apartments.each do |apartment|
        puts "ID: #{apartment.id}, Address: #{apartment.address}, Monthly Rent: $#{apartment.monthly_rent}, Square Feet: #{apartment.square_feet}"
      end
    end
end
# binding.pry
