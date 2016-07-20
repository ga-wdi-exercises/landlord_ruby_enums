class Tenant
  attr_accessor :id, :name, :age, :apartment_id

  def initialize (id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end

  def get_all_tenants
    return @name
  end

end
