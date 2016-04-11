class Tenant
  attr_reader (:id, :name, :age, :apartment_id)
  def initialize(id, name, age, apartment_id)

    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end
  def Tenant.new
    "#{@id} #{@name} #{@age} #{@apartment_id}"
end
