
class Apartment
attr_accessor :id, :address, :square_feet, :monthly_rent

  def initialize(id,address,square_feet,monthly_rent)
    @id = id
    @address = address
    @square_feet = square_feet
    @monthly_rent = monthly_rent
  end
end
