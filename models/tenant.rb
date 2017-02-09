tenant_id = 0

class Tenant
  attr_accessor :id, :name, :age, :apartment_id
  def initialize(name, age, apartment_id)
    tenant_id += 1
    @id = tenant_id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end
end
