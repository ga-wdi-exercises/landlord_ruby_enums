class Apartment
  attr_accessor
  def initialize(id, address, monthly_rent, square_feet)
    @id = id
    @address = address
    @monthly_rent = monthly_rent
    @square_feet = square_feet
  end

  #get and set ID
  def get_id
    @id
  end
  def set_id(new_id)
    @id = new_id
  end

  #get and set address
  def get_address
    @address
  end
  def set_address(new_address)
    @address = new_address
  end

  #get and set monthly rent
  def get_monthly_rent
    @monthly_rent
  end
  def set_monthly_rent(new_monthly_rent)
    @monthly_rent= new_monthly_rent
  end

  #get and set mapartment square feeet
  def get_square_feet
    @square_feet
  end
  def set_square_feet(new_square_feet)
    @square_feet = new_square_feet
  end

end
