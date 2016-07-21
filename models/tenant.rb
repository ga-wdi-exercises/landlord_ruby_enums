require "pry"

class Tenant
  attr_accessor :id, :name, :age, :apartment_id
  @@ruby_tenants = []

  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@ruby_tenants.push(self)
  end
end

binding.pry
