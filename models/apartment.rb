class Apartment
  # Place your code here
  attr_accessor :id, :address, :monthly_rent, :square_feet
  @@all = []
  def initialize id,address,monthly_rent,square_feet
    @id= id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@all << self
  end # initialize

end  # class Apartment
