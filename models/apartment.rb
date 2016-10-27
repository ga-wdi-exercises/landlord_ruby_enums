# require "pry"

class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet

  def initialize(id, address, rent, square_feet)
  @id = id
  @address = address
  @rent = rent
  @square_feet = square_feet
end
end

# binding.pry
