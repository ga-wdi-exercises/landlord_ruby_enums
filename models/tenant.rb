class Tenant
  attr_accessor :id, :name, :age, :apartment_id

  @@total = 0

  def initialize id, name, age, apartment_id
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@total += 1
  end
  
  def all
    return @@total
  end
end
