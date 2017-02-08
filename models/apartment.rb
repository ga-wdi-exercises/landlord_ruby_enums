class Apartment
  def initialize (id, address, rent, sqft)
    @id = id
    @address = address
    @rent = rent
    @sqft = sqft
  end

  def get_id
    return @id
  end

  def get_address
    return @address
  end

  def get_age
    return @age
  end

  def get_sqft
    return @sqft
  end
end
