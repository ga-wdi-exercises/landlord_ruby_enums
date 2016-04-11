class Tenant
  attr_accessor :id, :name, :age, :apartment_id

  def initialize(hash)
    @id = hash[:id]
    @name = hash[:name]
    @age = hash[:age]
    @apartment_id = hash[:apartment_id]
  end
end
