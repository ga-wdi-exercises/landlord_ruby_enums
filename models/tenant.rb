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

  def Tenant.list_names
    @@ruby_tenants.each do |tenant|
      puts "#{tenant.name}"
    end
  end

end

binding.pry
