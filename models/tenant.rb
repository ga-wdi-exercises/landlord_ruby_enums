require 'pry'
class Tenant
attr_accessor :id :name :age :apartment_id
def initialize (id, name, age, apartment_id)
  @id = id
  @name = name
  @age = age
  @apartment_id = apartment_id
end

def id[]
  @id << id
end

def name[]
  @name << name
end

def age[]
  @age << age
end

def apartment_id[]
  @apartment_id << apartment_id
end
end
  binding.pry
puts "End of file"
