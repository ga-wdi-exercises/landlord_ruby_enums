class Apartment
  # Place your code here
  attr_accessor :id, :address, :rent, :square_feet
  def initialize(id, address, rent, square_feet)
    @id = id
    @address = address
    @rent = rent
    @square_feet = square_feet
  end

end
