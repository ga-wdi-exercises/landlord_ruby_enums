class Tenant
  @@id_source = 0

  def initialize(name, age, apartment_id)
    @id = @@id_source
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@id_source += 1
  end

  def set_name(new_name)
    @name = new_name
  end

  def get_name
    return @name
  end

  def set_age(new_age)
    @age = new_age
  end

  def get_age
    return @age
  end

  def set_apartment_id(new_apartment_id)
    @apartment_id = new_apartment_id
  end

  def get_apartment_id
    return @apartment_id
  end
end
