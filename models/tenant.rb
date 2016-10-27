class Tenant
  def initialize (id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end

  def get_id
    return @id
  end

  def get_name
    return @name
  end

  def get_age
    return @age
  end

  def get_apartment
    return @apartment_id
  end

end
