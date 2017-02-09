class Apartment
  attr_accessor :id, :addr, :rent, :sqft

  def initialize (id, address, monthly_rent, square_feet)
    @id = id
    @addr = address
    @rent = monthly_rent
    @sqft = square_feet
  end

end
