class Tenant
  attr_accessor :id, :name, :age, :apartment_id
  def initialize(initial_id, initial_name, initial_age, initial_apartment_id)
    @id = initial_id
    @name = initial_name
    @age = initial_age
    @apartment_id = initial_apartment_id
  end
end
