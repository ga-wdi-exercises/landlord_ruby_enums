# require_relative "data"
# require_relative "models/apartment"
# require_relative "models/tenant"
# apartments = data[:apartments]
# tenants = data[:tenants]
# ruby_apartments = []
# ruby_tenants = []

class Tenant
  attr_accessor :id, :name, :age, :apartment_id

  def initialize(id, name, age, apartment_id)
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
