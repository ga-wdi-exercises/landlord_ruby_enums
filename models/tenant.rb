class Tenant
attr_accessor :apartment_id, :name, :age, :id

  def initialize(apartment_id, name, age, id)
    @apartment_id = apartment_id
    @name = name
    @age = age
    @id = id
  end

end

ruby_tenants = []
