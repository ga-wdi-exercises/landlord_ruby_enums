class Tenant
  attr_accessor
  ## I know def initialize goes in here but I'm not sure what the arguments should be
  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end
end
