class Tenant
  attr_accessor :id, :name, :age, :apartment_id
  def initialize(id)
   @id = id
   @name = 0
   @age = 0
   @apartment_id = 0
  end
end
