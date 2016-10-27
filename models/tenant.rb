class Tenant
  attr attr_accessor :id, :name , :address, :age, :apartment_id

  def initialization(id,name,age,apartment_id,rent)
    @name = name
    @age = age
    @id = id
    @apartment_id= apartment_id
  end

  def get_name(name)
    @name = name
  end

  def get_age(age)
    @age = age
  end

  def get_id(id)
    @id = id
  end

  def get_apartmentid(apartment_id)
    @apartment_id
  end

end
