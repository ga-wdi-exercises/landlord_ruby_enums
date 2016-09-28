class Tenant
  @@all = []
  attr_accessor :id, :name, :age, :apartment_id

  def self.all
    return @@all
  end

  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all << self
  end

end
