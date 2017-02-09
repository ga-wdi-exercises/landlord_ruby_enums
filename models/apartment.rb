apt_id = 0

class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet
  def initialize(address, monthly_rent, square_feet)
    apt_id += 1
    @id = apt_id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
  end
end
