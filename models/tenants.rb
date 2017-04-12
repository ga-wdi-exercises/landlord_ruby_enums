class Tenant
  @@total_tenants = 0
  attr_accessor :id, :name, :age, :apartment_id
    def initialize(id, name, age, apartment_id)
      @id = id
      @name = name
      @age = age
      @apartment_id = apartment_id
      @@total_tenants += 1
    end
  end
