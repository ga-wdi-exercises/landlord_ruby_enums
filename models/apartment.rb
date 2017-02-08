class Apartment

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

  def monthly_rent
    return @monthly_rent
  end

  def square_feet
    return @square_feet
  end

end
