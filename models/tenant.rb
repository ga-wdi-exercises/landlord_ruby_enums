class Tenant
  attr_accessor :id, :name, :age, :apartment_id
  @@all = 0

  def initialize (id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all +=1
  end

  def get_id
    return @id
  end

  def get_name
    return @name
  end
  
  def Apartment.all
    return @@all
  end

end
