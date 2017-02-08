class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet

  def initialize id, address, rent, sqft
    @id = id
    @address = address
    @monthly_rent = rent
    @square_feet = sqft
  end

end
