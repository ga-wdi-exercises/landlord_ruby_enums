require 'pry'

class Tenant

  def initialize(name, age, apartment_id)
    @name = name
    @age = age
    @apartment_id = apartment_id
  end

end

binding.pry
puts "done"
