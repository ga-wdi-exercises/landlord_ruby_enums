class Apartment

  attr_accessor :id, :address, :monthly_rent, :square_feet

  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
  end

  def get_id
    return @id
  end

  def get_address
    return @address
  end

  def get_monthly_rent
    return @monthly_rent
  end

  def get_square_feet
    return @square_feet
  end

end
