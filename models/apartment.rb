class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet
  def initialize(id)
   @id = id
   @address = 0
   @monthly_rent = 0
   @square_feet = 0
  end
end
