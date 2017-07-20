class Tenant

  attr_accessor :id, :name, :age, :apartment_id

  @@all = 0
  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all += 1
  end

  def Tenant.all
    return @@all
  end

  def to_s
    return "[id: #{@id}] [name: #{@name}] [age: #{@age}] [apartment_id: #{@apartment_id}]"
  end
end
