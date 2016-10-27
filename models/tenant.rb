class Tenant

  def initialize name, age, apartment_id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end

  def get_name
    return @name
  end

  def get_age
    return @age
  end

  def get_apartment_id
    return @apartment_id
  end

end
