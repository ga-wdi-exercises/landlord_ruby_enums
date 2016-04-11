class Tenant
  def initialize (id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end

  def id
    return @id
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def apartment_id
    return @apartment_id
  end
  
end
