require "pry"

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
end


binding.pry
