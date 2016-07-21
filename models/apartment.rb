class Apartment
  @@id_source = 0

  def initialize(address, monthly_rent, square_feet)
    @id = @@id_source
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
    @@id_source += 1
  end

  def set_address(new_address)
    @address = new_address
  end

  def get_address
    return @address.to_s
  end

  def set_rent(new_rent)
    @monthly_rent = new_address
  end

  def get_rent
    return @monthly_rent
  end

  def set_square_feet(new_size)
    @square_feet = new_size
  end

  def get_square_feet
    return @square_feet
  end

end
