class Apartment

  attr_accessor :id, :address, :monthly_rent, :square_feet

  @@all = []
  @@count = 0

  def initialize(id,address,monthly_rent,square_feet)
    @@count += 1
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

end
