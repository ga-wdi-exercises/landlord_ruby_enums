class Tenant
  # Place your code here

  attr_accessor :id, :name, :age, :apartment_id
  @@all=0
  def initialize (id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
    @@all+=1
  end

def self.all
  return @@all
end

end
