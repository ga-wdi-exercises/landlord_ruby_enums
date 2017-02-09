class Tenant
  attr_accessor :id
  attr_accessor :name
  attr_accessor :age
  attr_accessor :apartment_id

  def initialize(id,name,age,apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id

end

end
