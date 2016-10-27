class Tenant
  attr_accessor :id, :name, :age, :apartment_id

  def initialize (id, name, age, aptid)
    @id = id
    @name = name
    @age = age
    @apartment_id = aptid
  end

end
