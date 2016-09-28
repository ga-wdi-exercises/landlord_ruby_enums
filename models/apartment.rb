class Apartment
  attr_accessor :id :address :monthly_rent :square_feet

  def initialize (id, address, monthly_rent, square_feet)
    @id = id
    @addr = address
    @rent = monthly_rent
    @sqft = square_feet
  end

end
