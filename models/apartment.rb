class Apartment
  @@all = []
  attr_accessor :id, :address, :monthly_rent, :square_feet
  def initiator(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@all << self
  end
end
