
class Tenants
  attr_accessor :id, :name, :age, :apartment_id

  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end

  def show_all_tenants
    puts @name
  end

end
