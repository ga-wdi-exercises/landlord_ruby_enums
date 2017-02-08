class Apartment

  def initialization(id,address,rent,square_feet)
    @id = id
    @address= address
    @monthly_rent = rent
    @square_feet = square_feet
  end

  def get_id(address)
    @id = id
  end

  def get_address(address)
    @address = address
  end

  def get_rent(rent)
    @rent = rent
  end

  def get_sqrft (square_feet)
    @square_feet = square_feet
  end 

end
