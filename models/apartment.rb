class Apartment
  attr_accessor :id, :address, :monthly_rent, :square_feet
  @@all = 0
  def initialize (id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@all +=1
  end

  def Apartment.all
    return @@all
  end

end
