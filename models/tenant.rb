class Tenant

  attr_accessor :id, :name, :age, :apartment_id

  @@all = []
  @@count = 0

  def initialize(id, name, age, apartment_id)
    @@count += 1
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

end
