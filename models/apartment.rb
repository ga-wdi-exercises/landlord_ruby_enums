require 'pry'
class Apartment
attr_accessor :address, :square_feet, :monthly_rent
def initialize (address,square_feet,monthly_rent)
  @address =  address
  @square_feet = square_feet
  @monthly_rent = monthly_rent
end

def address[]
  @address << address
end

def monthly_rent[]
  @monthly_rent << monthly_rent
end

def square_feet[]
  @square_feet << square_feet
end

  binding.pry
puts "End of file"
