require_relative "data"
tenants = data[:tenants]

class tenant
  attr_accessor :id, :name, :age, :apartment_id
  def initialize(id, name, age, apartment_id)
    @id = id
    @name = name
    @age = age
    @apartment_id = apartment_id
  end
end

{:id=>1, :name=>"Ms. Maryse Farrell", :age=>87, :apartment_id=>8},
