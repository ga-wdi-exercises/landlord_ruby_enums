class Tenant
  attr_accessor :id,:name,:age,:apartment_id
  @@collection = []
  def initialize(id,name,age,apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@collection << self
  end
  def self.all
    @@collection
  end

end
