class Tenant
  attr_accessor :id, :name, :age, :apt_id

  def initialize (id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apt_id = apartment_id
  end

end
