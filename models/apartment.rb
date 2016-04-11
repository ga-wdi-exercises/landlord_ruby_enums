class Apartment
  attr_reader(:id)
  attr_accessor(:address, :monthly_rent, :square_feet)

  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
  end
end
