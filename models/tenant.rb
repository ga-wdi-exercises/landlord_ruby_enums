class Tenant
  @@all = []
  attr_accessor :id, :name, :age, :apartment_id
  def initiator(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all << self
  end

end
