class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet

  @@total = 0

  def initialize id, address, monthly_rent, square_feet
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@total += 1
  end
  
  def all
    return @@total
  end
end
