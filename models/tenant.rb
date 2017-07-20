class Tenant
  attr_accessor :id, :name, :age, :apartment_id
  
  def initialize (id, name, age, apt_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apt_id
  end
end
