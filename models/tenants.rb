# require "pry"

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

    def Tenant.view_all_tenants
      @@ruby_tenants.each do |tenant|
        puts "ID: #{tenant.id}, Name: #{tenant.name}, Age: #{tenant.age}, APT_ID: #{tenant.apartment_id}"
      end
    end
end
# binding.pry
